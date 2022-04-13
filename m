Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE212F32
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 20:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649880358;
	h=To:Subject:From:Message-Id:Date;
	bh=4aYG/bmcjsTHFId9VgQNw/Nwy1eSNiuNOZKeO4U4egQ=;
	b=E5YCyiF/KDHPUEnxRFDFDRXmTv9C2nUr3CL2bYbp0SjMwsMP84qjxVFvzd+eixzO
	/B77FZEdSOWO5WML6YkxM0TNKwvJf4DmeaT5Ij+WIn6aI4fLjKPskYLtkrlIZV2Gro5
	vY5XBYk0HVHhQiX9Bf37nHnyhO9tM7VuNPBdPDpk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649880358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4aYG/bmcjsTHFId9VgQNw/Nwy1eSNiuNOZKeO4U4egQ=;
	b=bGX9mNklzje5nYukWUiry7nKCg8oHvv9BAjoAVKsVEMHTC3ozh+NcWwuomwh3/SO
	h1XzRu15YhJ8OebAkdU6p9aNux/r+/77Rehg0YrGWJ8o1nyF1kDQ36pjY4s7bho7ah+
	8lFLt3qQuPrXUwtymBQCoROTLIS/sOrXAkbow2WU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018024885e80-e83127b9-2a8e-4699-a9ca-a8fd5346963c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19b1a30c01f2c15b07755158d4caa921b8d2d14db6a61a7ea34eb9033c48aaea
Date: Wed, 13 Apr 2022 20:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649880358
