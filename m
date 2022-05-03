Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4BCA3204
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 15:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651590778;
	h=To:Subject:From:Message-Id:Date;
	bh=90prUb0sr/EpKC0JTURqfPZRf2C/8ATcQRd+PkCtcvM=;
	b=VvWZyRHFSOv567oGzb+AWkCAh1gYriwDX1/iAUuTeAiYXj4J/gAj0szrJvOFZ3ip
	MFKg2S8qdmS1fwVNPWR4+UDxEjwYzf+69UNYyZyXLSFKwkZnLAwCbTLcjo5Z0Beyhuq
	KptdwUmvgQodcCb2G2AtjtQg3//d1eAm5N9rbsCU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651590778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=90prUb0sr/EpKC0JTURqfPZRf2C/8ATcQRd+PkCtcvM=;
	b=EJEjB4TIsgZHunexMIh1jdX0jP8K08vTsnYgg5fhXuUE4NqvR11iYtALUnxrwo5Q
	NTLvVoe0YzVND3E/0WRn4VihxAggtozmvG671ibpr2azmZquFFDdfol/9Zqfpc6qbQM
	mU30DUyFmzxd2u5Wi+cEKlzHQC2B9Itmi0Q/alAM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808a7b4dc0-cfc9c63c-4666-414a-9acd-07a6a0f187ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7411b3d556d1790124f1903233620c51211372bb6b4860993482d09fd2cc3c5
Date: Tue, 3 May 2022 15:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651590778
