Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5353CA57
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 07:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5291C433C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 07:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692431048;
	bh=IRwGchjO7akEWcIboh5kf69ynbY0clonDf946Hk+zms=;
	h=To:Subject:From:Date:From;
	b=hXfP4xRB6STdFCnO6LQLgbmc4E+RewHcFm8hR4KAvwN+3ii3V9fLHj6qY+CCI7n/5
	 XmM467JX6oXi8mFHEuby4QknNfaIIT+zw3+IaTw2AIzYD9+1yTIV9h+dhXB2RV9f5X
	 C142cNKR4ocj3TQUq+wqGckjt1J2hRVNtCS5IND860MPomnguM8FjluJ+BhsNolQ4D
	 xTvowF4Zn/KyAolRKjRocMj4t2Ek9oIa1ZX7SVM3dJwSFnfPtidrsh5EmO2LKbtmdr
	 kKcMx+W+jjoZk9t/w6GtlnqMPli3tE6K8m3LE87+wCTCMJmC/1qWeXp1S+QGRKufae
	 5m7WHkGFXpGzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CAAEE49A8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 07:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169243104868.13063.17612495741912992781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c5dd5a7ca62fc2a3b34327bc80e1c5139370c6f0efa9157ed58b935153af1d
Date: Sat, 19 Aug 2023 07:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692431048
