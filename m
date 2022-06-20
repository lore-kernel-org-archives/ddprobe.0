Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02B0D7E6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 07:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655710019;
	h=To:Subject:From:Message-Id:Date;
	bh=vB7QgLOJL06yDrEF49ydKtZnAXHVfMhgp8EHFCxGCys=;
	b=f2qzT6JJuTTgcG+5h0WpwSM+xtqJC4PSxHxvrv+VFDoOw7WbaeywqnDv1YD5aPbM
	Y7rzR2KtCgbSosBmOuCfkQn3sMNzj+sKa+gxwGnmzwn8fGsHL04oICeynAHIaRTSwz+
	W90xeiLdl41LsBR7fhKqT4oyToeou5J7IIPvGaps=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655710019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vB7QgLOJL06yDrEF49ydKtZnAXHVfMhgp8EHFCxGCys=;
	b=ICE2aZBHXcf+QDn1UPNZmevY+ueMVMR1OR30dqYFnnYuYBRs9QBUjMFyl7lS649L
	mPof5zIK9XjPAe0GqIX7OHrIkeUMkay+s2o3lefT09PnjFdI6AIbJXFZlINqi3034fj
	dEexfry7FJMv6YuT8gDA2hFIR9icmulJqGT86Bno=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818001eeb3-1af57279-77b6-48d6-b639-be578b824e76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0de40a3e97ea5fc51d755bf826c28f30402d9159914b6a4c8b15f55afe0904b
Date: Mon, 20 Jun 2022 07:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655710019
