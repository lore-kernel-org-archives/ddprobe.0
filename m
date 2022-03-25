Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7593023AD
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 09:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648198918;
	h=To:Subject:From:Message-Id:Date;
	bh=k1Kt89bf7VuOLGSijr057yqR13lHiN8YyV2REUkZSjs=;
	b=AklCPaulq7vbHtrYwEjVpvrKqOB58ChJRelOgzjYGPAGtmTBNVAIPu4+kW3Xxr5L
	IkTCSgpJ0AdiAyxF6SLs5yhgTTg3MDgl4Mso2tiutnHLX/p/Mhl1n4MqECiFWkZpjNU
	ozJnIJ8EKMwxtXFdg8jjvoyVf8KLPVsIY3hQiF3k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648198918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k1Kt89bf7VuOLGSijr057yqR13lHiN8YyV2REUkZSjs=;
	b=a/H5qlvTG8lA8sfqFCW/N7DlMpCTugBVh9vlXNYROYGIuLOQBNLuItDGu4mTvp26
	KdJ9NMV/PvkKYNK8cUyJFmHo3vSa5dHqhpRLxhGXlXaJsVZBTuyauBEAhAgWNMHuHgO
	r1QCvqkSKL98Bj23mGwClCUOg2k5RusDo4R9yO/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc04fa08b-a050affa-1da2-4383-8acf-9a6463dd9bec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1bb7b1e0742e6b5fe2422246c98ed746e6c670c6ca033b37fadb6d2caf1da97
Date: Fri, 25 Mar 2022 09:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648198918
