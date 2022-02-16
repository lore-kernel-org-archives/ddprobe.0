Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478152911
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 15:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645026085;
	h=To:Subject:From:Message-Id:Date;
	bh=6Eo5Azx+O8MglVcP/1KZzR4UqHPTK0aLxvjUlZ15o64=;
	b=ClU6ucCd/DGxCVM8vGMnnAs2gkCz+nHC6XkYUOH0zVud43fg3Lq0tbqa8D4T8Vpd
	zSohMBM47X/GN+TnMKF95NZHI39r4bXD8aTUBTh8XSeiUs34i3QkOfeuocFugdTFFKr
	TvcJA6vgHjWNPW2kzhHnnCjhe/xlwbJPVBcIPGXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645026085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Eo5Azx+O8MglVcP/1KZzR4UqHPTK0aLxvjUlZ15o64=;
	b=Xjg80R4Fp2eowC5zxA8RK0Zlkm9fjsdGdizqrXXW3VQfAFaKayO0esBFAAHCRAn8
	kAtwwbxraLB0e5rIXLd/H8lHIt7OinGf4rusUE+iQwMN8wu7k/FwvRhHNeePLMECo+Y
	rMLMWqy3MjnFTefgDbLbSUvM99R8XNf1U/aj5/OA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f033207bd-f14ac476-4f3e-4d1c-8500-2b4ff881fd7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5be565dffca9866d116450fdf88818e3e47ad1f646b4ae719164e5a9123978b
Date: Wed, 16 Feb 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645026084
