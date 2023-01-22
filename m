Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402597E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 14:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF593C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 14:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674398525;
	bh=ankL8rhTgXoKpr3rrZKOK8PTNUeB/OplAmFNbyy4OCw=;
	h=To:Subject:From:Date:From;
	b=gm6GJ/GcGYAmKoRbAcstv4ii4Rtl+b9D4NIFWE9ZzxB63UBDmdXFUEprfD+iLNjAo
	 iTn9dyd7A6wjj30MW7iBP/pRnK1xGk15jCceMPpTUNL7OhO6xMNWvFMJ0xi65UgTlQ
	 MyeElCn9p5JoXTe/l4iCpMhJIegGvtI7pDtvmnyViL55jqUeYn21SgHH6DqhW7q2Wr
	 pO0ccERc2hYVASk+pPW28JfovTLg35d9NYeg5GZ+UIIZ40VFmKEY8EENYomqdZHrKG
	 R3Ew3WU+EXEDoPZgCDJ/PFZAQDUuSFk90rWxFP2Fj/iPgYzpFin9big2J5dl51BA2e
	 ikEdu9g5Vl5zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7D6DC25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 14:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167439852574.1005.15627636103896776278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d17eb12a8e42e3f2fdec2bdbfad1529fd5c1f7c006a6f2f7b78cd0d527271f56
Date: Sun, 22 Jan 2023 14:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674398525
