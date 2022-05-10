Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1067B28E1
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 12:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652185499;
	h=To:Subject:From:Message-Id:Date;
	bh=K1BBqefaNLwYdF5mpnEDCTtNRiumZ2rmu2GLhw0cj3U=;
	b=EHT8V8GLoJWJjHIxBHeZKYhw50T4cBlcMrxqd/O/TNTwbBtyUr8dRoolQNbGNldT
	4ldd6vLDYzK1HQkmsw4QQRZLof1VwI8ST/cWoR+olcrlpqCbXS01AqmQUHEkPnT81wi
	ZPVo/JDZ9chEuDdAY7qfyWnkeFWwCCq6HS5EyrnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652185499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K1BBqefaNLwYdF5mpnEDCTtNRiumZ2rmu2GLhw0cj3U=;
	b=E060ZM/Rw/uVC442qv2RVlTv8rAKf6D3PErXAAvzEkdHHv9dTJGxj6uL7jscWjRz
	WYcwC75B/u2w/vGL10rWobJdJIHKZuUV+EEEmPcW+PKa/3czbIs2xxO/GKmLTofbN9R
	uVs6BIUTOKxXDhFAYYhunLzpbB6bvTlewjyGn38g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180adee0691-fc0e94ea-e1d5-48ef-9b4e-546ae3a23bf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d09ca3d1739ec2070a6d3393d92d19270f7cf0588b3256edca6f1dacd0da9d1e
Date: Tue, 10 May 2022 12:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652185499
