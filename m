Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C581EED1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B09C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668320454;
	bh=FqOb90NM4iFw4inrjUFRBtDppYCbYC2m2tUbYFCozP0=;
	h=To:Subject:From:Date:From;
	b=BvU93agQPXCicwBy71PgUPuitzMAh6ZqnqfpQ4XqNP3fNeBmqqbDbOnBWpirgtP5V
	 5mqqADH0Dd28LtrQ+bjcBD+E1zKk6xIpTgzjG8Ls0inkg2xJUc69IOUKnAQj8TR2HA
	 5e2MpaeZv0MS62cEAcTlCQeCyXPWySjryMekOCM6kMgvlDhqov1XXHjETTOHpkoBlw
	 zx3eCe6OORBNEw6NrpbAxzWoOLdr3mdGDQ52BbIn+LwrW+BLNqG+fKTmTn73/3AaMH
	 hFwbU7snNkQmDG8I0MM0NOHWVNNViYXlN+m83Z1cnvKP4Dn/XPVU6Pxi87tBWECaSV
	 p1tS9T8Wx2Liw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A220C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166832045433.24533.7767159748293804331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361433e89006ad3649cb3fa8f0bb74e0af21f2c25811e9e07dd3624ca0a3f870
Date: Sun, 13 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668320454
