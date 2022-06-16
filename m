Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2396C7A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 06:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655360579;
	h=To:Subject:From:Message-Id:Date;
	bh=jQRWaCr5Bf6f8qu9ckF2puBw+sKuuUpCMSYBpxyWDto=;
	b=ZZc67pbVrpUaqz+Qw7zMiyKvCTcxgL5IlX/f3silxwCjsM/r28WzxgBtWaHC8LH7
	GEQaEVh0175/Ig69pHdAHHo/n86w9smPTOqqlpazkQGov0EIw2zQCfdYHQ+mo2IFyuz
	IlSLhtTk5feETzhTGpz6pjs3DujuqcWV6+zb+OQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655360579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jQRWaCr5Bf6f8qu9ckF2puBw+sKuuUpCMSYBpxyWDto=;
	b=fxLqGzwbbhtW/+7oLBdv1d2a1qrg2xRqwDPKCftW7Fd610kGj++RPe3uNayJ57Kh
	XltnoyajMnsGye+8Dqw9wV029ji0cVW4jehMtdxuoCVMP4Muka10Qa32dllyR3MeGX8
	w4zzcvmEtDLqDfBRJnSffSQ92N5vigmVUKmK8auc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816b2de6cd-ca8c184c-52b0-4c48-b751-da79b65c5df4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6d7a829bee4086e421a350e7fbd30f868c00a8696634145ec65c65ebdf0ef75
Date: Thu, 16 Jun 2022 06:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655360578
