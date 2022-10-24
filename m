Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71C94680
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 757EDC433D6
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666635653;
	bh=8wnB0Cw/5YQiECIx0152PddHPsl/C1Frb/F5KMvQFHk=;
	h=To:Subject:From:Date:From;
	b=YRBgbcjDPqFYTc9OO/hjByNrEIoUEmWNm4xOEPXw4dGQsQfmiSyY+9D+Xfla8ZwFB
	 dIAUA+NzN667fVhh9GR5QJCodl9SqkBQmgpvRL+eoAIA305Vc4zdXquZGiUu02/1iq
	 MW1UlDChaCezpMFasHPxzaTv/d7tsU3Ut/UAuwfjYT5Nb+jo3CJ0GU31W9dFdsvBF0
	 m8KttF6O6tMyVWWxzfpQCVotVQeGzaC0pdH1iEhl96S6WtBN8WeS9BbfIjtxvv48Dw
	 mGx+LTpa/FkrmAsfgp5tkts/gEWg7cnLis6e9EGBj7SKwOcIXqfYjEtiEWxJq38F2k
	 1wHdYTYBPeD2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF9AECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166663565337.4405.7512878099409623146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b886d47311c6be35fb8a766ae39f6be05757830832e1569a1bdc04a14bd0f3
Date: Mon, 24 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666635653
