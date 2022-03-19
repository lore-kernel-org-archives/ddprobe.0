Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4568717F3
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647667284;
	h=To:Subject:From:Message-Id:Date;
	bh=7wzLvpoLbfFIRfIBso9OI0lScL81Qs8xVheDfguOKDg=;
	b=XD9zUSMc5ip4qaQ3H5T/zfmyqlDS0uMxbfU0i8+TokUqGHCY79hl51n2zIT58avy
	Jv/NmGecH4FVdJfBN6+aN9g7P2SblmWcgCzxap+8SflgaExa4PzdcziPeZQlF5MRS7P
	xPBMxgDyNam2WTDfhNFE4wOxF2g4x+moIlHaQNbU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647667284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7wzLvpoLbfFIRfIBso9OI0lScL81Qs8xVheDfguOKDg=;
	b=d92AwQa2YW9q8OSJBQrgOw9nNVnMbpQ+Yo4SdDmVZYEtUJuMZcunBC0fY6TftMkO
	/de5nlol9W2hkP3g7iiHxWene26swqFA/UlxzZnQE/derucA8nSVm9GNBnvujB2dXEr
	xcD6ACuVM/Wni3X2rzf5wYowbq4oV7j08hwJn5RA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa09f8aef-4ae5a146-af52-4d7e-980b-a2626d5ad9d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cbfa6b028ff4ccc6c4ccc41ce6ebbe5c63dab363728271d73d4c772349bdbd1
Date: Sat, 19 Mar 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647667284
