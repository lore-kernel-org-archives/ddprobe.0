Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1985B2560
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 15:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654184159;
	h=To:Subject:From:Message-Id:Date;
	bh=P+Tgt610NldmgG/KSuFZBOb3c4zx0jYMKsYm51IQ8Xs=;
	b=ZZp6IF1y6BbUaHy0zMN7KbfncF93Xl9FR6BD62hUqpyY09A4MZT8veM/H4MEE5JV
	z644K3voxBiV4PBHsxVMFctGmQsZtEN/MTaCGW1+M+3AMYLcJEVIISR8Q16PDA7zRZ3
	1pVCBMQVWzwJsDgMn+A5yCI2zWpq3v+nQFkfSMRU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654184159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P+Tgt610NldmgG/KSuFZBOb3c4zx0jYMKsYm51IQ8Xs=;
	b=BSa7J+4vL8acNlOy2+hdjmS6MJNW3YSRvtFmdbk06ZPO34UkoPPA4Adc+kE8N/SW
	isEOd+udQ13RWs69nBg+safnYTUeJ8gul7kV9iF8/npRnCgH4s4eGjru8FBau2gKppD
	iw6IZv6QfaVFapSo03cbUNv4SfhzRgcDf6Ef3/oU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181250f2857-863a0a0d-d395-4a40-90f5-a80dfe4afe2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b35160e4d4bfb9d680cd4c6530eb997747f4f4cd5fc0605687d6475e49ffc8a6
Date: Thu, 2 Jun 2022 15:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654184159
