Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252E61363
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 09:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649670658;
	h=To:Subject:From:Message-Id:Date;
	bh=ytbVUQvFNEKI07xYVdmJDSBV5a3PNSB132vz2h8ZTfY=;
	b=BVaSJLgDC9bLPSiREWx+aEiPHF2D+ORGCeDwiXLHEsrlkB0S9eN/ez7wbyBM/rVq
	rgXyfi4yqbl8gOOPYjX3iiOnfW4wyllIMrwv+Nv9NBy5Ub8V3lHkiwCqQPepcpxcJlw
	E7Ry1RoJoEA2Q7/IlQOw36IQmLmo0pR/z3xFSLfA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649670658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ytbVUQvFNEKI07xYVdmJDSBV5a3PNSB132vz2h8ZTfY=;
	b=KF5C1pzVojt/Ub9Gsul6YaVHwyQsee4mvuAszwvIC4lNwvXr727rZdBf1SaAoeiL
	jCwGutpH0He7mYa5obOR+IEfPx+DeQAHQjS/DU8tmc8gDF9SuZkW7slowDSNVxWatVW
	z/v08x6sCCcc4FrJKoJ4lZmdU8fDfAA223BVRCcc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180180898d5-221c6d8d-ebee-448a-b707-9351982e16a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe51a46ad667d8b5c3d275e0b4a63f993f061589d0075e01cb809032d53377e5
Date: Mon, 11 Apr 2022 09:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649670658
