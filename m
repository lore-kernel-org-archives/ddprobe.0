Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6462E38E6
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 01:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645060285;
	h=To:Subject:From:Message-Id:Date;
	bh=ZOCau77/AbS8SHdjwRJNTOjirDE3s/l3ACks2CaEgzE=;
	b=N23rI2I/MnbDgdce9nvCPqefX2I8ka7eM42XOOH8dZsIF79/ri1MEqHU58/tZOcU
	0YRm08taQIzjpyDAWlegsUi1/kkM9+AhmboYXA5pa1+ZXgIdcyvLx5D79oRgUyuaVoy
	H17qs2BuPfWc7f28kt2x8qumB0G//S+zz9xiqVE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645060285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZOCau77/AbS8SHdjwRJNTOjirDE3s/l3ACks2CaEgzE=;
	b=kw9LJW1wFbbCv6oIUgPOcyDbvZ+E+o2TEa4WQmy8POZlYPiqbJWIco1DiMs/Vo58
	9M+MKhg/GGlDo0OKYQPAQjcuLsxedsIZYs/LZ7gLrLm+Vwla/UqqnxM+6w0Za6zIgf2
	k+3r+InlIVFqqaLQ6Vzh1NE8VHvMFXjxRpk+uVu8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f053be16a-45091445-dd85-424e-ad1b-62d58e06d12d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc63ceba567e741609e502f6d67411ddf9b3941deb09522cb1930abb7bf0569e
Date: Thu, 17 Feb 2022 01:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645060284
