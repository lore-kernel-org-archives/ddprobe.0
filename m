Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B32A1FC3
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 17:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651340938;
	h=To:Subject:From:Message-Id:Date;
	bh=UWgMaiA1GnyHd+CnvKDcFWYHxEJ5QoeUkFBazXCfty8=;
	b=Dun/FKR+p82p4ECZDECKAbd/kpBRTf3tZK3TlmTjK3+b9+ojbTGR6KdqTnkQwWdF
	QFqrfxKf2QJPf+0h2SGrKsyZ/Qa6+OW+TgkG9X5N2he38SdoZ5B9XUZsXSL55tbZJlu
	rm0ruLudLASJ6hgwzXgOMQAQlwIokHX6UQrirxtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651340938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UWgMaiA1GnyHd+CnvKDcFWYHxEJ5QoeUkFBazXCfty8=;
	b=FJOhTDNf//e7Pv05/1vjulTWwz4k8vshXPsam9tpsifP/sbb9sxaa5CuOggAFCz4
	gn9yGTh6ebIB9xsxDx9qhmIpSsGnohOmKWfQIIfieZ19YFbw3IxS7w4fxtNr5w39COV
	+CBZmVOGMeYEl6sR4rySDNRb+gMHuESt35tTZP40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807b970c0c-cd9a116f-8226-4f8b-b7b7-c6c687900f23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d8126d2bc6a5b669e745cbb321cfddea5f6729c89c14ec7d2f8c9a8283cf0e3
Date: Sat, 30 Apr 2022 17:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651340938
