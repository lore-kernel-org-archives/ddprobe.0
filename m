Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1FB22EFC
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 21:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E95C433C9
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 21:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694641448;
	bh=RBW4ewpx5iqQZNkO7sci16TY71dSQ9kwbKXLprgjkMY=;
	h=To:Subject:From:Date:From;
	b=ByjFJ6zayd9U49I8WiwyrqVfPN/qgVKqcwqaiNxSO8+CUN/oMCXBME/ozxRFakdFL
	 G0emDWJFyR4ocCkZumWmnIZkwOjKSc7m7wggVa0tgy9UTwAl0IHW0XBT1ZsBA2c07s
	 nujWWYYKVC41FV+TgNwxZooBVWGHV3+adhCOJnA8a/td9lkY8q8xR+lFnRckd4INmy
	 kt1MLJD39SqYUsbDKlVMrVNN8GL6UeNhe3e6xzNK6kvTeGmfM7Re3zB3sxZ4Ykp9Jz
	 5g5j8J+lQwABVpGKsfsGIX2v9bCC1SvlOvkhKhAJEhEerAtUDxLid7qA4m/Rjms33f
	 5rIRE36uyGHog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5F1EE020D
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 21:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169464144869.26984.10224667973506852851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7680ea662816bca3aee3e16cc604cbf7db54d385ee792bb86cf20fd13f1ced98
Date: Wed, 13 Sep 2023 21:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694641448
