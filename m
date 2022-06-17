Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4864C84
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 21:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655501099;
	h=To:Subject:From:Message-Id:Date;
	bh=sYbEfTgVhxBP0fcPKMZZ1H+C055kCgFpN3XewAO6UvI=;
	b=A9ctPubBb5jNJeuBUEIdmjUNia9xVocxfnPXrUc0vZOErXxZyvdHiqpgVbyLH4LX
	GBrumrL31FsFiLz/kLeTIDFIW8kAWqn2U/vUvGJDwgp1v6iZgMkJ0Dkku7GjtU66nfE
	Kgmxagj7aKgEAqpRT72ZUiF01SiR8zTUluV+xDUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655501099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sYbEfTgVhxBP0fcPKMZZ1H+C055kCgFpN3XewAO6UvI=;
	b=eHCGhHGryNmo/SbuVQxQ9yXkjUSak5bpB8R6OPa6GdfOwYuaVBEcCWJ8e+tjPQvO
	ANo4V7VtEIfySurfHRHyuskxVBv2WB/3fFKqsDudg/zauWyGPurc1zktCM/YIOm+GCq
	z184WveRWlzhKE+L5wB9d+MLLqUt408BAmqHEAqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181738e10c0-601fe5a6-ece8-49ba-ac09-ce1b0497f1a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e0be7bf6fa1ec7a27e30b6dd3f5fd57181f9fa95f3c0ab230a444fe4a8cdf23
Date: Fri, 17 Jun 2022 21:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655501099
