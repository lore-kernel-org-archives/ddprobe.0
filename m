Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD4183C35
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64E09C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662372653;
	bh=IfrAxJD/Lt9JSPFLCXRuLMbandqAOoXenYF5LCBtvjA=;
	h=To:Subject:From:Date:From;
	b=J8g11dK0fIXLlyTqpv0ftoFLUbQmu8eDPGXW8x3rP5Jbfc+ZvC0EswgBwKezeF3pI
	 UUfsNC6i+ZykKVFb5X92KWnwd/R/29RhqQDkOEQ3CIY++YHM4X6LZDcWfgyKGusVVr
	 O66uKJghXdDWsYSk8VA7ABwdeXvwub5mJspycYAhbDQu2sDwK/zptQdwAGcTPNABVL
	 iJoXplsvN89BKRiA/uo0I00bGD5Day9Ox1cl4d0lr60fa75k5Tcl159s1biA1krIV+
	 ud7KTduCAHdbM7kSgoRDEmcarU3Li+X5lwPb/SqZ+2lXrrW8Agop+3sNUv9DLOX5ok
	 CIXGS8IbuOExQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E355ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166237265331.11266.5546863944079543846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53aedafa5d32edcbffade5d4d550746322bc02f944ac29eebae53f80b517288a
Date: Mon, 05 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662372653
