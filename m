Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6336F1C16
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 16:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD146C433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 16:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690128128;
	bh=X33DK32wfoESVCChzkDC6MmUNPM2rlZ4iGJTLGTRx9c=;
	h=To:Subject:From:Date:From;
	b=qQ50nBGMDDC8STmlwctGryovRqUJa59R/QmwTVdb5/o5dxTJwUwjEYXv7olH/z7rH
	 WavhEhHUlrgLnYa1XTklengas7La+Xn7gyJTGJbzjqb4Cumitsfm0+X0Yrdq1AmZxN
	 vrg2J1IAr7LzB1orJhi1a/gAyPza58yjLCc7twO45/Uher8/BoWCZzRolxH/1tM/yf
	 1ItAxuAfpgXvVvyHs2djFDO6w9EYi3+W1J4jxz++2L/fjXSU48gzPCvO9n5Wd7PBkl
	 ykWdRYniSj74dznavKSslIx1teln7he3jGk2qgcOB5Nnaz65Qf9hC5s5V2JROoKrCs
	 CxJiTqtrT2nfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7DDC001DE
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 16:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169012812868.19259.2341329505666013187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc83a4137f6197ab14334f89c4e9442a6a68f86ebaedd28893effc04168648aa
Date: Sun, 23 Jul 2023 16:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690128128
