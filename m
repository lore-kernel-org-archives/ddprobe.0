Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1493710F2
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 01:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652060098;
	h=To:Subject:From:Message-Id:Date;
	bh=n0AiZS/gR9hXhVRSyRO+xrFR3jSxdrbVhdxi0ynSvKs=;
	b=KjfWAzm1OFWiSbcZ8hFk1r0LSAFNLB4t/494fPEYAp91CCbVCJ700JFWl1gwXXgw
	ZEnkHB59FwqFis6YK57ocs+W7n/WvteLO+9BsF5ojhSGRkWKJr3H5I/Xs+n0ncjBf1z
	Q+H9osghHPjjnWQ68WZ4fmlXBtAcA45+kWTAvn18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652060098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n0AiZS/gR9hXhVRSyRO+xrFR3jSxdrbVhdxi0ynSvKs=;
	b=Pw8bwyKJMG07QTK1iotFixyiVmJWfm/tgdyIKNTlbRafIIf8m3+DLMbh1uroQyka
	8Te2I2j4mUnkZl/rC79Npxj7rOwERfq6idn2u8oCjeecKO/1qk1CcuGyqU9dT9YLQYK
	BV8uGu7UPL2JPDpo8ovIFidpR7g0jfUiqFQuHFU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a6748f15-434242e3-43a4-44f4-8f9a-5fc0213653e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dc80bb384ee027e430407a56aeaaf0ecdff08a5fc75340e19e0157699f5a442
Date: Mon, 9 May 2022 01:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652060098
