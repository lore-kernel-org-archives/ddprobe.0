Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE6223C3
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 21:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655242979;
	h=To:Subject:From:Message-Id:Date;
	bh=1FbuSVn0DG8RSr/P1V/g/NHNBEHNxV3XUrpP+UH13sY=;
	b=Acq5vzdQ7B1WeN8OGyEBRIozaAQJIPaIbzgxhkUuiwLm8BLIACOyh4UBuNozrt2h
	kP75JtnlR4EQI7hB0huqBLfY8VR9rZ76sl+jgeYniDDjU3eaViZUerPN+YE8FtyLtE3
	3tiNzvv0d9IUCQP7gnW3dtszqnrY71aSgSAz9D14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655242979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1FbuSVn0DG8RSr/P1V/g/NHNBEHNxV3XUrpP+UH13sY=;
	b=kSS0a4Ez7Xg6psXaTZi9wiY3eIUtLNIuUrr+9BTCeCGjiu6sGFDnJe2VLHqBOe/L
	ZVETz2mmTg35HzcmW/3U+kEc9syexlu4H/dlRb9imci8TjxlXVLzdeSETLG851+HSop
	EEgkwctDKyFPa5JT88tzOZi+KjhvMGf8cw/KS98I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181642b7802-3518b9e6-7697-40a9-a25a-154900905290-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 895b666b16a06788075ccf2df8d5ade575463379ec9ffadb45e3b4aa58896c24
Date: Tue, 14 Jun 2022 21:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655242979
