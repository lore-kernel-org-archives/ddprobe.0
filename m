Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E688B7F5
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 09:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655026319;
	h=To:Subject:From:Message-Id:Date;
	bh=5fXidkG/0AY3oCLunbP1bQgFNdDjNI8HohXQA1mEKv8=;
	b=ELnI5dDb/Y3Xkn3GmTSelbhhr0F5QL4/fq2A7P0wPH73PkBpua5/nF3h2S8kz3cA
	1PiQrN6RGZLjfwVciQBd3rMqv0TtYHYW959DBOi1+aM6gSQ7tFJBP3tOPRuL+RYp3HT
	XkLa+QS1UswISJNfbRxgZlDcvX3XUTfUBkijaKpY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655026319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5fXidkG/0AY3oCLunbP1bQgFNdDjNI8HohXQA1mEKv8=;
	b=XmZWRjtIKy8rGHkj3cQDiulQrl7laAHRZsNMUV8JWcc+vRsQhCO+dK0PHiK3kyX/
	CTSkidDBYX/RTlwc2CCLpuRv4ltAW92/QGI4Z81DObdvZvvbp4fxVj+gkCLIi0hGV7U
	Ej/kMVThdkaw4yN1ppD3kID9XEABrRaRRBgLV6+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018157417f87-87002a5d-627d-4322-ba8e-9cad42dc5baf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbc914eb10ac149acc55451829668c7d2859f50c84b50058d8a6677535ef62d8
Date: Sun, 12 Jun 2022 09:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655026319
