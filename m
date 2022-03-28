Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350BC7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 14:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648478038;
	h=To:Subject:From:Message-Id:Date;
	bh=m7Li7wrm4UaaY5YWL0qNYA0xRbDLf91Cyu0MfpMm4gU=;
	b=FMNpzr6lIcALvVZF5d0A6Gx41/5byrei92HVxlcShgudSKy5NeN+cZljQlHVpAj4
	cKZSpds3A4bOJOrO1WU4s9QLZYI8GcyTxx+xpE3fUX9IfK85PEcaNNzBbwX5so8DHHd
	2p0NBf0aHkBd5xi/WC638/gxtwGGe0XBfIVBwnYY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648478038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m7Li7wrm4UaaY5YWL0qNYA0xRbDLf91Cyu0MfpMm4gU=;
	b=LDq/4nSrEAMZZeP4YICywuEeE/1PpNs1rGSgjdXaP9HFXU3fgx4Ojk03jhXHWYcP
	V3stMUKGaPkMyxb4RSCUeTypjLH7bXRMS8Yo0EsYCYXMZPcB7Eppj1FDwNq5rVkvSXe
	vkxaOWdIfc6r+XfwzECNBpow2/gNAswpkl0oHxjw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd0f2a8fc-dd8e63b9-e235-4869-a1b1-71744a3882a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53bfe665a5aeeaacb9790f1418b1e0f27a39f19596f865f59397f1335b735f8b
Date: Mon, 28 Mar 2022 14:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648478038
