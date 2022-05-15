Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD7F2F25
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 17:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652637239;
	h=To:Subject:From:Message-Id:Date;
	bh=q/vU2WSs08T1Yb5l2jY1gM6MprgEMbJubPFEXiTXnbM=;
	b=GDPN2WLq5zam3v5deEesEZyDn1Bp0LxjoCD17zilcFOl1PFAtE5EgMs/FEM1F7hC
	HeAJxXueWvAjIULCNlNgBArfCEbQh9m+lXONyDbv8Rs+vG+yVi5AmOpgk7E6Sm6MlAq
	qpURlb1Cm9oXUQtv5OTlbFethI2X46MMZJ7uxk/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652637239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q/vU2WSs08T1Yb5l2jY1gM6MprgEMbJubPFEXiTXnbM=;
	b=jjOX/tveBhck/TcyCoSOGgfX/yhr9x0ubrTJmozlXshaRLF+rNlZ43huORO6rMgx
	1/YOCEtkg8Sipb5mRGW7nFQrjnzAen/vrg1HeOnFE75zEGU/FcgOz6M92QLoaqUBnag
	fNblwDKQVR7sFdNj8YfxeNCEivNEPoHOxBQLYhJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c8db07e3-db8e2618-5494-434e-b4a4-1c1ec1a7b435-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0557d25e38a7527ebcfa6b5e36351100048d19c6ce60d1d7e141381566bcdf38
Date: Sun, 15 May 2022 17:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652637239
