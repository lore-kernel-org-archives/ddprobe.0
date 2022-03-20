Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729DE20E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647749484;
	h=To:Subject:From:Message-Id:Date;
	bh=6UN8+E7f3CYJQBDVAds74SP8O0KSIe97W2CZ8efJT3Q=;
	b=laxFq7Fm3XDNh8qcbvdKtVuG29/PBoTkd5jyvvytHA5CNZD9LzBPmjhtcNzFTxy9
	b9wXtmszCMNN2i2J7JhI4046jOKsDrw0yHdbtcJA6d8ukaRJfb3afRn08R1mxfBQUr2
	gRLHL8O2wRGIZFKcmZtGnpRmrVA9qecZfsS5XQgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647749484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6UN8+E7f3CYJQBDVAds74SP8O0KSIe97W2CZ8efJT3Q=;
	b=ZXyddXp5Fvi27XVNJj2woTXEliOmiyf/mCqNzyNG/L5w+Ptsul3V4Oltb6biuTQT
	1vOB4srpxz6pbBIsXvzbEMctNQ/hp+NtcuNs48Rf8FMK0y3W7ax+nta2x2vePny3ymT
	AQeBOwdRE76QrXec1/9OWVixlLlJqzT1mP96Va2c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa585d0b2-f2f6ec8b-3ed3-4290-bec7-61dc75e913db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87ad847fec023cd021a83cc396caf97b268486eacba4f088c6b6d5cb6c27a883
Date: Sun, 20 Mar 2022 04:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647749484
