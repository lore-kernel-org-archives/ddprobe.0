Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAC17E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 06:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648362538;
	h=To:Subject:From:Message-Id:Date;
	bh=1SdivpZ/TdaHabPNH7xsbSHt83hw6yLqsAjTqlriA0I=;
	b=bAOD7agcpOD58j34AKsrXnCTm0ZQLNwGmPcS4cR+ybL8kGBuPsEUL9EbkD7tA1zF
	XtxA/9/ghFdA8h1dTH06SNlQ3uEZEBCDVLPNiXpkHpBHoY2WysASQyc2M9hroR3XZUX
	lo6C3CrhFcw/dghLpQ0lsVAdRSRaTYM8hMBtY344=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648362538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1SdivpZ/TdaHabPNH7xsbSHt83hw6yLqsAjTqlriA0I=;
	b=cHV2is+ra9/9BFsQccybjC0bdJtRM1TTCxH95cJSV011oyBgOUu186TL2L2qimff
	OlnZmHPhqgCcUmjchRE3RXK7ewDiSQjz0tSpD0WEnHXtTXkXf6vsqNnvV+BJnGG7a1I
	b6vqH2duZzsLhg+jJhL/NEUMOoHrM2VKAeapJVRY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fca104529-18b9c178-bc9f-44bf-b3b1-ae10216a6b24-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9936d6319f01a11368781f4b7a0c9542bb7570cf74c67f656ba2afb6f77837e7
Date: Sun, 27 Mar 2022 06:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648362538
