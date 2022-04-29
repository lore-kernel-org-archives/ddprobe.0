Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876D21852
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 15:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651244878;
	h=To:Subject:From:Message-Id:Date;
	bh=6ynlkjjB7go9egjsLDMbuRqD1G/UmUaSoGS2voLLIuM=;
	b=gQtSLHqvTFdiZu1xa/n9Q715GhJPDgNKcENGH3ySU+RzUfifux0qYmxH54Cb2Dyi
	2VoRXgA66l5sGovnoSZZKzdDtcwprPk3aaHaI6d793be6ULKayEQXAr4kY1tqg7covX
	2FXkqNQp8WgS+uTZ/xRnGR/GpRa8TniNw4d7s99c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651244878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ynlkjjB7go9egjsLDMbuRqD1G/UmUaSoGS2voLLIuM=;
	b=Y3GyFi0NRi6V5zdf2OBm4k/JnMG4YDNxJlbt9cJOc6P4KAgc6trqT2nbUK21izTZ
	pl/3ahUYt69gZS9cglSVhktEtf7u3uC16EzrgFW5Sh7PsFH4LSEcJwu/fx8Ne6wkV/W
	y0maWwPF/SXH5whpFNIOdq4hUbngId+ABg4rIjZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018075dd49cf-c79d12bb-d1c7-4961-bf0c-3b33607e7be9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 122ddce4c1f3565d53e66945a1bf9e4bfd1e314fdb31d3b25809948b7df1cd45
Date: Fri, 29 Apr 2022 15:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651244878
