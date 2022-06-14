Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E9B7C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 11:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655206679;
	h=To:Subject:From:Message-Id:Date;
	bh=tQpSL7uXnP0G6GYs0/excVHQRTKFDpS6IG2nLmPJy74=;
	b=jQfi1Z69mJbanc6N/6AQeTqG7EoaZFwOHEOMBjbnHjm8Q1Rd+kRZVg5R2+uKWsVS
	a+DB0ySfHqVNNRAQPvyu7bppR/59Y+Ed8j8dlGtPAgy6Vinxhu/h2j/cTl4CsgHUWvM
	q83pdiCA9B0IZdJTilWBUcxbbEk+gLLKD3Z4TzX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655206679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tQpSL7uXnP0G6GYs0/excVHQRTKFDpS6IG2nLmPJy74=;
	b=LMVAJa816pPmEtROmtm0lNCHiDdpp36chbAkr+0rNlMNd0Ywvoig+aKTnIzOVmNq
	F6rZeaAKANuikeeaJLJUO+nw6SctxExvprFjV/ZWNmEfJR+FD5itH+TzjKaP6nZbqQ0
	xQ+dRNmrADFtAj4p+A4X/+ORP9PE0K3WFEPvuvWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181620192a8-d0a7b38f-9225-44f6-95a6-f087b620b0c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99722cceafb239e9572ce2dd67294beed4ae7bfda979143432522a848331b4e5
Date: Tue, 14 Jun 2022 11:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655206678
