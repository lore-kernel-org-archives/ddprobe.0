Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E171385
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 12:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651234378;
	h=To:Subject:From:Message-Id:Date;
	bh=E6xuGXHBcUlabxO/8T0cn3ryAL2RR0De8ErH/k5wL50=;
	b=j9CpUVEoAwsYxZJYjhDDZEHRtbNc2CHXp/CJ/+UFxOAMQz+8/PruAI35mEMEsO7Y
	XIXYgujtyVph7jGYIjiRBHZvqbU1uGY6UH44IryI3/ILR6gwz44wct1MHiE0qhm2paq
	0Qb0OaQ3ocN+9WMJVurF/+yAVprYA2Ww05tSJXY0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651234378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E6xuGXHBcUlabxO/8T0cn3ryAL2RR0De8ErH/k5wL50=;
	b=jZN1w8mSi3P0sXirUx5wluj5REvIe54OMq0SX8Av441LMqCEo6Qq517dZWdlHX30
	v5v/CpvOebnoxCu4J0HjzsukHCSfj/0S11GCotaGvH7bzjCWZhM3/5rS4Y3SfZbCBL4
	nFvzkHB2vtA3HBA/bsUODrB1tbIWOgL92NLpBzQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180753d1217-93778900-6c7d-404a-849d-a813582529bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9b77b84b2aa729ce178ec1c0db5404328fba181903fa3a2d39860e1f2c8233a
Date: Fri, 29 Apr 2022 12:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651234378
