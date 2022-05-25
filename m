Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1271DEA0
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 08:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653466619;
	h=To:Subject:From:Message-Id:Date;
	bh=lKBvHRA6JRlGy2LUlhHRSmtWbz0PkJFLTTxqlR/1DsA=;
	b=Aq3n+AZiKwH5BLP4yCjYRq3wqDuz3Wc5++XbLtgVBsK6WIeViQfFkPe6kbneW0/9
	3Lk1tAFueoZd8lKoVF04m3ItiOKdkwN15NMAJ+bxcex9qe0lL+b6tZdJK871WLN45L6
	LRq1ahL0kaJaH4rruQ1lwWW4aDWONtV5Ok3SjjAw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653466619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lKBvHRA6JRlGy2LUlhHRSmtWbz0PkJFLTTxqlR/1DsA=;
	b=cP/pK3xzRL6zm1PuSSLVlof4RmOuZU847nUn1W04wfAuigdjWEo76HmikMWmamUR
	vynQTOcl+gWIBCGC8ROCHWUMTxQ6gXuVuWdGGPbach5NY21hWayL3bgWtqnxJVdt9IP
	fXb9A3+Wd+Xh1rlrGNxPBCRG788b7uCRPErKxr0E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fa4a5d5d-9c5c8282-d41a-4e10-935b-5a708b06be4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccf54a934219c608e2737a7afa51e4368ed0d4dcaf25234658a008655fb8061c
Date: Wed, 25 May 2022 08:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653466619
