Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4EA17E
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E656C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668819654;
	bh=CLYugPitRebfPN9oS13iPTwF6ooUQcaC8ajnVG5+cmA=;
	h=To:Subject:From:Date:From;
	b=KZPgY5fVOm0ahazYZXgJBQeY5qKwPSh4zbbKCxVzEsqRbBqJZSYBCmFxL5S2gW64U
	 fAByWTBck1GnUeVUlhBbZHyACksx6o1tjqzY3n/sziC6yGl7ns6jDoYZnAN5q2FRVK
	 J919mAiJZ2oxOnLL/OL+AhGlYRc16pTXdNssgCCJHAVstBxvRPt7O1UN/RMX2m2i86
	 OyHRyPrfz7EoN1JtFZbtmgsmfhVNrrwsov2ODxFWRyuWQAAIX79LU8VbWL2vP2Ipiy
	 TAM+3Rk6F7FRb+M5Ag9Edmd9t4DlsH2GhIQR86tvsK5uqSsUK4Ns711SguEnG0Ml2z
	 vSL96ys9/ltEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E8CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166881965433.16879.1381164274041164067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330a88e106cdd1f6bf565727caf0cbac7f78616ef683c2c3c151757bfd7da56e
Date: Sat, 19 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668819654
