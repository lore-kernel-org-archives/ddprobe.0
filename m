Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45853222
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645994785;
	h=To:Subject:From:Message-Id:Date;
	bh=XniC/6NyQNGpdPr5/KgCYd2uct79bqxYRyZmSC18I6k=;
	b=A0OH+dZhN/3crdcnrm81TunKRkOXTbFRC/t5n6Wy4dJveo0ibqnY+w/OOwdEcMP3
	pPyrHnCVcknDiN2uy2Vd05SfvVy8Cm4VS3jX2G/269sCktIpax5BDEQMgJS4eHSEE/l
	xzi+iRzGJ+PyFHOnz9fZ8Y0W8X/9M1q4FQNZ98EY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645994785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XniC/6NyQNGpdPr5/KgCYd2uct79bqxYRyZmSC18I6k=;
	b=Vjqklpf87T52oGNMJX6SgsH/LsyCMMEqUAxOl0981Dc4ivAnmQWgwGsQ+iPkjQx4
	FybRhKGfOTV4P0td+KFLgV4+nwHnhtgx84P1qjDWTvtyPS/2tRcwCjZZd6HRHML9kCa
	49lkKHyHV3dGoRGhtam+3CryPm5ocs79rOj4viHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3cef381b-6740f638-462c-4ebe-9d40-da27ac3b6ba9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 336d64c444a72fb11a625434251b7426c194f54a12a1f610088dccc1d5e7500d
Date: Sun, 27 Feb 2022 20:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645994784
