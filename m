Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE51E15A3
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EEEEC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671756687;
	bh=rAm1pKiDMW4yyZPYqXSSuKc81AXsGyjLBJaqrZO7M6Q=;
	h=To:Subject:From:Date:From;
	b=Yxws6Tm9FiGxEBOR6aMSWqauAX66hT2Dk3cUeG4fn3Pkshlf0NEL8bFwjOBEKnxUO
	 4lfxrQngOR2o2aDyG5FRlwMPH2fXuun2wytOh+GV+R5ABcPqqRulxFevL3TY5EYBul
	 p/y4MDl6iCUf2PXdcI0CjbXrP39ZKgW5OJ50Z+Ktf9I2PtIP4rzYWlnG0OEev/fnqm
	 3iog0UBg6pNqDUkKdMxcUuXATW6eSXH3JXMiJdZmAO9YxXCOCGF8UviWdwTcbJCX4a
	 d3m9Y01RT1rlk1rLfGkDJhdO1cDJFZJwTi68LGD/a6Cp+5Mf9p8ZKR6CHD8TtrT3bj
	 iR8Qn4W8LxXXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E340C4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167175668737.21189.16934278314003933527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57dc7b2e0dbeb6f64142e38c39cd1110a249dbe54b3fe5d6b4901e2fb5202643
Date: Fri, 23 Dec 2022 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671756687
