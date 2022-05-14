Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A53368
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 08:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652517239;
	h=To:Subject:From:Message-Id:Date;
	bh=NsA88CVuhArDdofd2Sk30ILJPJFHpHsHy7UhOPl51mw=;
	b=G4Ni8mS2s+a8a6EtJ7FXItI0Jp2OBaM+fTNwUu3ZNNpr9ZutUw8jA57438rnisDZ
	OPZRPLUkayRKtNlWoZoacvolkgybFrCossmRETMf30VvYCxGTZ4xSGujLGDK3o4qaGM
	HOMg6F5jlBmekegOLbDX83SnxDDvPyemuyR6JuNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652517239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NsA88CVuhArDdofd2Sk30ILJPJFHpHsHy7UhOPl51mw=;
	b=TFE5aQ1d27OD/F4G5xA+h90+8vaZYp+qk9Av7xr+511XkxgLH1MihAbj/M7dJhWZ
	mhVMI4KtQ5N/iUcEZw/D+0sXXr5/VmQQmo6+6NUS1h13JGbFT2LJZ519C7u6yrrozoQ
	JGa+1PYWgVuseYH0SM0SIPCL6yU59LPTOMoTEJbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c1b3fa2d-82dfdb27-9b92-4038-b3c2-c8ccf7ff4e9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a570516863a382d48f266e6a4a44d76a0c625fec9f9cbf3d5b95d590197b784
Date: Sat, 14 May 2022 08:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652517239
