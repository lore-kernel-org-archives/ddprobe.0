Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11070138A
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 11:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649675818;
	h=To:Subject:From:Message-Id:Date;
	bh=QNxveiRhiBs0Hh+QX/QrEmDBjyG5+KaAulPtIRMAx0M=;
	b=hS9GX/WT4Lu/GQX7z1/t0waxQDt24samiwpWtvdzGPEkBuXewkIKLgqy5ift2wfp
	YwFUToKi0UqGRGUzgd/TEptvecQH8azcXMXPZ78+Dhdhpj4osI2lNkG7B3qEl+ioHh+
	d926m30MTJfBVyQR+oE6HShthysVxxplrOs962GI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649675818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QNxveiRhiBs0Hh+QX/QrEmDBjyG5+KaAulPtIRMAx0M=;
	b=dCujyMixaHWu059DlCt4btC2HkhmZ469U5EIWnj7pUCTaUwOgoxPzu62K+eEzLec
	PeKpFCXtnuGQMB6r1dnxNtOpEyNqbyyRmxkKK8IeFtsRo+yMdoh+LZwvzard4/UvNQI
	H9Lj44HGzpRUz4LAU74E0CFxbE0r79UHn67x5wuw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801857553d-8f28fdb5-398c-4960-8fe0-a21bc25a2d91-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22ad60236d82413a2c8d0ce5fa1c4c9fef97df541fb3a58248f5a337d640303d
Date: Mon, 11 Apr 2022 11:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649675818
