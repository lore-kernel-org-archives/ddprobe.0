Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8BAE7A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 14:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650636598;
	h=To:Subject:From:Message-Id:Date;
	bh=BhxhSoJNu1yyyfhIj/mJDOsJaxkPQ8QNpMpu6KTRTRk=;
	b=difZF+jizW6QyX95LWtaLLnd6Oe8z+xD7wMvgzxipEvnAryUJt/Bvxq/sNsP3quz
	MdQ2UIQdLO/27Z1SEAP04XjwidID09KEfGuXowV/xtJi8/GrRBIsHqpdoX5CIdZ8nW5
	2pvDMoywbdRSoTZZ5G4P2gqX02DfldDgCF8AWbpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650636598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BhxhSoJNu1yyyfhIj/mJDOsJaxkPQ8QNpMpu6KTRTRk=;
	b=Z0vY9ecuzec2k4lgL2PeHMEArKMKSxU+5UGRO0nEswBmIS9ZtMRLIQG0X2Rcetbp
	heJ9pNkc1APQZC5bTS1lMrTItvBxloZbVTAH278kzCfwYUpYHQpEmbMvJibtuVQH7ae
	kgSjXY/TCE5xxNQ8FPUa0h3kU0YrSWrkgFX3jE/E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180519babdd-e3a929ae-d907-4f3f-b072-50316c15a0a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fac4a28a6eb7b91b2bea0520112aaba3ba0b6968e9e75b8cd7a86f3321141433
Date: Fri, 22 Apr 2022 14:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650636598
