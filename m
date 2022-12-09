Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB7F6FAB
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78A92C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670615487;
	bh=fQpH4ZYv1dNM5yIea5AbuwLorQvR2kWnn6xnzyGrne0=;
	h=To:Subject:From:Date:From;
	b=QCHEKMJQjSPIfXvHHScuNb1A5/mtmPSDXGd/98VsEhIAUKJ3HuuKHbQKKx+P0Yr0O
	 slIlCIMCa5eyZqLhebcWg1sFEFt7SUhfOFck2E6aNpr2UGWT4wnSJeDipcH1HRFUvz
	 cPBhmOEFlnv2rKwsMRux9Iv67DHp7i26KmCeX0k5kJDVQM7tTfKpB3vJ5JqB1Z0Q1N
	 00ez9rz7OE6KY34YMZBcJjHZkw1xEf75K70D2xsz1qI3y+aSb1Rcv13ND31xmaqQCK
	 saySiFVWuAltNWiH4jF7xEcZSjvp7RRZnx1cv16VJQWL+JIHWpdx2hpix2zKbZitYp
	 /3ikbyx630Ssw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAFBC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167061548738.7032.6451327604767489959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637fd0554265696e72c543f41c58349b0c7848f2465bfbade01c4b552135b7f9
Date: Fri, 09 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670615487
