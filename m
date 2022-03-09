Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64955645B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646789785;
	h=To:Subject:From:Message-Id:Date;
	bh=ZHH8YI5/vOizbCJ4AX0MsvOeiGBc4NcEVUPZEXTZly8=;
	b=M0gVNPIO/cOI8FMuSmU51yGcgnBrvea2okIIhg7Jgcpf7iE94v0nzp5mCrKm+uBH
	j3CSeOjM0R9AoNPTHgnD9cMMzXAzKnXlSHu0bo8CmaTMrGAT+LoN+nGz9xx19o+fi5d
	4wyNDECn9FFfSRgM465dxlAc+dXQTvcmC5NX3d1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646789785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZHH8YI5/vOizbCJ4AX0MsvOeiGBc4NcEVUPZEXTZly8=;
	b=UvCllOSBsM3DEiwJFLNd+/E2Hnr9yr8xnwMBObnyerLc1r5drjIBMJtL/Ve6e0hC
	qCkvMMvUZXVZbz4afaYUklZRms+7GysvOecQ/i7xtYa+FnbTM9Nsccot0/vDN/0oZW5
	wgusS2AGYTHNBoZV5AMaO2fOpZMs2Qs7M+Q/sGzo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c51f4f2-7377b386-ecca-46a0-8e95-ab6d5893bd2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a236db799b24ed64dcc1599e6871f68c09b9a479fad78699ca1487639ab1053
Date: Wed, 9 Mar 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646789784
