Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C987E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 07:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650959398;
	h=To:Subject:From:Message-Id:Date;
	bh=lVYM+ixcFSLMXUHkiGUULT6o+VPE8v0S5tDt9RLbjKI=;
	b=keOzdowAHckqWDWEyKAP8F9GsgwN/RYi2MYtb33xCiZre8R3CvJmHJ+C9TJuO0vY
	xv40Ni83GUt9y09wY69RPHKoeou6hU2GJb5ViQt1yF/VStx9gSrdl9EbzOm2hIoNs9S
	IJSX2EHulo1OrNI5CQKUfZb+AiKLsRrsIHbF8Vgw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650959398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lVYM+ixcFSLMXUHkiGUULT6o+VPE8v0S5tDt9RLbjKI=;
	b=UKpNmRuE292ZgaqtcGTGSx+qyBHb2eb/UNKQYAntQSg9rn1VIa2IvY1fErwEmZN6
	kZdSz1cKw+EBV2U7L4rs1a0YFlsjMv1re3rVHqcL118NaUx6Do+p1FlgLra5QSW8NHe
	1I/l0vOGi9KIxFQjZkMKvt1iDUwaw2hSRYP7Jx2c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018064d93572-78a1f0e3-6412-43d1-8282-ec63c8531be9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 388313ece889774a833f25a4495fcf15761cdf855345dac390ec84c698f60962
Date: Tue, 26 Apr 2022 07:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650959398
