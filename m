Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E47D1C9F6
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 22:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD75DC433C8
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 22:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691619188;
	bh=eGHRmTQR9GFXaCBx/O1EA0Ac24y3p6IOjTu0v0s790U=;
	h=To:Subject:From:Date:From;
	b=Fgb24o9nImasFkp4Scl31eG5vUr62F8uZhnaylFPrNOdgmY5tPLd5HRF0y4OzhRj4
	 4U027JGVwAGLDIm2FgNLf5ZH4gj+hF0zfdLi3nT88vHMuPmhSb/0YybKdjfgE7l9G5
	 GUQFBPyM7semqf6o0NyDKR7PQKgXA5IryiKmwJquRRoUS8McHeZHuVQzt3AFFpAvhD
	 N4ShTgUSsadsWrFU8XNuMucgeOunXNQrWMipYcjR0EkIs8Ux8iYzk7Yi5z2b09rzbk
	 7sw2VTui72zEO5/TKnWJ49om6KpxSGzK06JrTDleCbLw2CihASz3eUjqk+KILgN1nw
	 QAJdRXx9Fpzlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80B4C001B0
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 22:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169161918871.26394.1352217079366496913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e201a49fba8e67d77efdc5eb948d7919ecc580ce691df0b2f112b48f405630cc
Date: Wed, 09 Aug 2023 22:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691619188
