Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF96246BB
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tzlsmNWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85C13C433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699780696;
	bh=CmXttLZ03DlhXOp++pygjmHDwr8WArAGiP7uUVvvo4w=;
	h=To:Subject:From:Date:From;
	b=tzlsmNWYrEaT+ooU6yv2iSghIbGJ7HQeaIbcfetncgXK70rCP4qZZqDrCMjjHg5FD
	 mQR1STN9kBMSK5XA9m1t8HT4lueDLO1kHJfbpYBAmgQEqszIG7UXX5B0apP6LfW4Lh
	 W2HcEylx7jOBPYfP+mV/MTOsVw/1lgEHQL9jukWUOA07+O25qw12qxJuqgl7xF74yK
	 Fk9aY2htrAmc4L49Bkbez6ytt/rYvwtfD8U1LAM3YYDFGdQ/GDVvqD4f350f/NJnEr
	 KWIcKAvQNusViV4MWEcCRCmBUfTCJiNDWweEnpsfa56qyiBBei7Zj9A0RKApGGZnuC
	 QUmDmQc/CnYlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B999C4167B
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169978069642.12659.6095313409546934357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f115040bb86d595213e703b8be55bdd37e2dccdf527bb45d41363ce0c35512d8
Date: Sun, 12 Nov 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699780696
