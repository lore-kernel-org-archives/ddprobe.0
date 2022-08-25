Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0E31841
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 00:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F48FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 00:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661386252;
	bh=zk1xIrAilTgmbXlW69d82BTNx6QdJCoZdu+g9fHhn3g=;
	h=To:Subject:From:Date:From;
	b=pgCYo8tEOWe9hvha4Dp+qeVZH7RILucJYqzoVQE8b5GN0bRnd3VJUwNlc1ToGHMpE
	 UVJUehyLHLmomKqicGm+aQrXRoeeMOda/5Dp/T5QGejydwpcB0BsGs/1Ywb/Osr14T
	 IB8vQ4k2juPFk/bGXh52ibqYz/NeijSO/QllWkiWJ2dU/ifu9276GiJcdE0X4MUggh
	 26KrQnnTpyPZfnY209C2yv8gqgMiR54pLGMHzFltoaIOSk6rt5276a6wKasSxDE4sy
	 MCuJ8T4lsO9DhGp3+drrij10ILnI8qCDHd4vBix4CJjwML1xmDBuVQWf7km+HR4oJl
	 ZLUkzyCieF00g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E9CBC3F6B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 00:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166138625235.10500.9133389258666023909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebfe7c685d4fa5a8c82f433e1c34097c774aba35884c2b0609be4e90bbf0922e
Date: Thu, 25 Aug 2022 00:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661386252
