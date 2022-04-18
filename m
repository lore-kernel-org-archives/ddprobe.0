Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5119627
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 01:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650244438;
	h=To:Subject:From:Message-Id:Date;
	bh=U/XMxIR+/GQOCcvSZDw7zTu68lyZIk0XN0Rxk4EoZZ4=;
	b=fhZu5XG9gR3S3NTnIJVyipPScJdAy6OfQbrPR5AqmzRBdN2qAB2oCwSqweP27OkF
	8kcIuTKmhngCyTdKXJ9CkrUCzzPe+y2sycv6lULtjbIsyoKztGBhHhYIsKvlHggP5tU
	MnblgkcUu83SzZg3j0krrerWBou4NSQ1fhngas3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650244438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U/XMxIR+/GQOCcvSZDw7zTu68lyZIk0XN0Rxk4EoZZ4=;
	b=QlTLkpdPFcwwU8h11FMZEptLF5pKke8lI7rspZZwweW8BQ+cC2cDS2CvQQKoD2jq
	qGVxOCO/t6F6+FX7JzkKr0Sf/HPwEnKJjPjdfO4YRnZ6qzPfdD6uZz5m6eO0m0ULHw2
	ZHOGVfNor7ie8Ulw6rOv7azD82y6La9sAkss1ldM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803a3bc8f8-f9d6b207-32d0-4e23-b1de-6838c5d1f0f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2feb12fc7490f23b4556e01e3841a51acf18b9c4f97f9cc86fd389f3986ed667
Date: Mon, 18 Apr 2022 01:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650244438
