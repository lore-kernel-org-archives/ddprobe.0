Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEEA161
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645353084;
	h=To:Subject:From:Message-Id:Date;
	bh=0x3qX59WxWOtxZbeOGVyaz2iOMPpboM46fPMzNGtwO8=;
	b=DJLVLO0pMILjcTH6yY+XmBLLoqze/Ega6fQrk8jPfN/Q7O3hpuFwGFrZdrTYrnwI
	YMPFU8LrsxT3wFt+xCZbPlAVbuxKHm7gJs8aPReQcVJYsKMroMUHTasnhfNB0AfeLLA
	R5nWv3xN9cpfh7r4Tn0JsQ+4gZgjcqXtbTdR5xHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645353084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0x3qX59WxWOtxZbeOGVyaz2iOMPpboM46fPMzNGtwO8=;
	b=knUkh4wF3FUyt64iAfcPMKPpOOY/4Te+eJ4VXV3BIUpiL6ehJ6qXT/Apgsyx1G5w
	sS1QYHIOS41iaASHvfAyH0ZWh7ExVQ8rdPC9BYc4uA2nKiyhsyGb9sqHxS4xz3Roz10
	25Btul22pCu94azfC8peYRC/L0mIrb0amrqqdn3M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f16afa758-581604e3-c802-4d5e-be3c-3bb8b75a9e01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a2e1752ff26607e5a5a2cff0595b4c451e6ab02b70ece8160689fdf08737a8c
Date: Sun, 20 Feb 2022 10:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645353084
