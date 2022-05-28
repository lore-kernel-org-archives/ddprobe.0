Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFFA41851
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 05:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653715559;
	h=To:Subject:From:Message-Id:Date;
	bh=lAQohJvYByRq+K75jiG6wGoTsrysa83LTpjTuDO/2xk=;
	b=kJy1eRc5C+emUzBODDjYn7LESdN3rFFuvZWL0mNU/qWEgtlVpVhIi9JrzyQOwS/S
	u4KjYwvJf/EyfCVf1680bhFR+EPrspbup3SUS2k0PxRT5rVNicT9502ggGvGmIzi2xi
	mqJoFYrcmNhxRxCL3fDP0YOgvAyDXUttbVlC2VtY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653715559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lAQohJvYByRq+K75jiG6wGoTsrysa83LTpjTuDO/2xk=;
	b=Fbrlnyh6q1M+0fXkFpJyKbKvy8S007HFaS2chV++BJ5ZoOKW1RFsqgv+xM0BPs5U
	9WbTnfqyeQzWOthY5yPXxvqDvjE2a4Qh2SBIEkP9OqZ2jLLlHtOylFPGt1j4Uh1Zvee
	A3P7ZJ08rc/3T6X1y/PlneOaEyt8QLMR1ls3t8t8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810920e387-eaaebb4d-534a-4a8c-8ead-d7480f55dc2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2c4cec21bcb74a5dcfc65a7e346a36038cf220593ca83e5849b8302bcbc0274
Date: Sat, 28 May 2022 05:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653715559
