Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE7B4F3B
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645236385;
	h=To:Subject:From:Message-Id:Date;
	bh=fKMhEzUbCcvvFr3qjzXDLLfwubwwzEEfVZ3AFuALdqc=;
	b=cuXXr/8dsQjY1D7mhNW/KP8d4q8fJZCRqYp/24eg7pisl6J/N6G0rrFpxPGh8oOz
	rNhQHuCt9+Bmvl8tVwphKcrghnldRsgEhs15UVlDdEX1/g3pibsh6b7eMidctbvvNvK
	gl8kwLX4AD5KOJktRF18R+O0MFcrQbygH8WaTgKc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645236385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fKMhEzUbCcvvFr3qjzXDLLfwubwwzEEfVZ3AFuALdqc=;
	b=l3M7uFxT1Z7pTcGprfd8IWoxrcLngRYLlCbSJ+fr5mR92Nvccr1z7dBFX2FSNyw8
	j8eDZvSDGyqlx+AR9URBePq7uFICnjqIMEYRnO1ZpbgQ2BVawOM/C0mRTv1Qlq7Bz/v
	YTPkcKGHL3dnUD8aI0TDDNt+XZNTF3zqcLQCSg+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0fbaf44c-2008f420-2410-4f22-b89c-385f99c6c01d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15e50983e5f10d4d3da515ec6760c86501f87892850825fa8a67ede0b509383b
Date: Sat, 19 Feb 2022 02:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645236384
