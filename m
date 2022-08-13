Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585677EB
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660423252;
	h=To:Subject:From:Message-Id:Date;
	bh=/waSrkTLGnaGgXQRKpucFz2hIM0ipx9f1k0i+ZGPSHo=;
	b=AMJxSCpXMAP+Gtvi2TXjV1d6qwHWvYTipD4hdX7j04VJROlYJqP/znmFGLHkMAqJ
	X6frVl31/poBeIFblqztmZp0vqMQzFdhjHmz10ZawMPKFhN2R7Q0F1L+ed06R4nAY5R
	o14QhOFyRtRSxjpNAfUzRqtfLQZkkvfrJgk5nYfc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660423252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/waSrkTLGnaGgXQRKpucFz2hIM0ipx9f1k0i+ZGPSHo=;
	b=Cw8KMdjI/zGI8ujRbhrG/OcIxblYPwcIF+LeYzsihcRmsvIR+j7H2Tyrl/pJGQoc
	+3XZIfG2eNppJWb9tUgm5HFOBJnG0aQQbbGMYngD4UbdQdxCmBuuWku1nVpuJ4aXfkz
	5wdNgFW9avIkbbGmdQ3nNzkF4SAePhXwulqXfces=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018298f02a55-827e0d68-6933-4214-bc06-ce04c9962069-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0d3604a0a26a37f78e41174fcb26719dc15e8771fd4a41d0abd75775e14bb6a
Date: Sat, 13 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660423252
