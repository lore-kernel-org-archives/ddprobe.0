Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD7B28F1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B6E9C433D6
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664043053;
	bh=awZ1U8Hk12cszss2B2ql7dYM8ZFVWEX5c3D2gi4cRGw=;
	h=To:Subject:From:Date:From;
	b=R8Iz0fyWQObsku0p2Zs8vQeFOLvS7lZX4QcfuTnClMZAIZyjMr7+QQMW6apHTuRQF
	 0JB0QoPuX4rPrhU1OMH6DHrgUH4H/IgA4XUQ662UFYd7iBKSfJCqNGqvOxXu9ZKkX2
	 lnFB37qy8qm1aqYOoHciOgVhc3C6LAUlwO0z4aeq30JFei2kIG5D7m2TKmuX69cXOr
	 5s5388S+eQNidIKtW4dYhliG2ceP1wOTPCMP2XwA63SsBbVTp+b4Y0qcbpitdaQYIG
	 Ajr/ifU+3SFUItVdv/qCi5+8KXKzoS4UznhD1OKC4W5TBWuprB/fqn56yfODyPuzHu
	 cBurcRxSkAuhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51470C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166404305331.21345.12958465419937380461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1579f81d319a838b38bad1994d2d90e47c4b01aa35c50a753c01a293e44acee8
Date: Sat, 24 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664043053
