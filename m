Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3105CA0
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 14:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646145985;
	h=To:Subject:From:Message-Id:Date;
	bh=s3aArKKMP3NsTihCiy8Ftpn8i/6o0BUaVcJ+SZnnhTQ=;
	b=O7vJ/rYvvYfe3ZgYAtJkATSLFzcuEKFpcPX6cgU9BSXTIQQGoieRlfJlrBgIEZTh
	QVq1ZmsX82X5Tseo9Ku8hz3uQbf18mvuUavmA40QtQ0C8EhG06R1nKWgMGGgLzNG9pj
	SIE4vdi3Dhx/NB5KI41hNJjrNDRhoPI+LSyljn2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646145985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s3aArKKMP3NsTihCiy8Ftpn8i/6o0BUaVcJ+SZnnhTQ=;
	b=ZLAt17XIJpWZsvezYfu/hegNBN2V2kJZit8AWP8qVH7MFB/X6FMUrODUaYMiD9gv
	TgCzejXm6L1hR4aF3vUoGegnTcUIJkxSz+PZPTaZLizLCSwWOBuDPIzSMcrNU+qJQGe
	H3vmkzHRg5Un56Bf1mLQJffoRSoxXzim+e8jK/C8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f45f258fd-916f48fe-230e-4dc9-b13b-ef6c47623b7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad4aeb6ca1b18fa5cf0052a479489b41277fb486f67ce6050b06dec813d1bb52
Date: Tue, 1 Mar 2022 14:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646145984
