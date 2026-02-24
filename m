Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0492619E968
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771901694; cv=none; b=qs3saD+I2sCGJR6gz3GX0Q15biG5H4dTw5S6P+Oshtct6gVSEPHknW2wtmT61PXzTMO2urfdd0wnCVe+2+ZGh5kn3nZiE5UPPdeOnnR96bhZNaAXMOXG4zzwkOtWm1pF+JXMA/U6PK4Xh6VZUmKoxYGgaCIE07dIo+sOk36XwOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771901694; c=relaxed/simple;
	bh=F4gec6snzjeqz3InktBCKv1RpzzvGTn6yEfyeFEc4qI=;
	h=To:Subject:From:Message-Id:Date; b=Z+/x5Ds/Sw2tzcNMa7k2kWkleCFYJ/BngQEAMUV+GG7ND0Aw9Mtr9RHTBi9xYEP/yCtmh2X24MMBb0EvyfiBs9mfRLFm9zEC4BN4Emw+qIHgvwUTwrb7NOAaI7FyWuJKdeJvl5VmXhOo43cD6VrP55kiiMRkDJSYCWqFUDfV5ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e0oAx43l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e0oAx43l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F037C116C6
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771901693;
	bh=F4gec6snzjeqz3InktBCKv1RpzzvGTn6yEfyeFEc4qI=;
	h=To:Subject:From:Date:From;
	b=e0oAx43lg6ibHvodZ76+lUB4VfL2NhGpiMhRiAaX5v11F4s/moxLg5QpHT+YfMB6s
	 vg1JXYWUvGP33k+hHUguxiyWa7uNKT4tXlUpnPXYeP2sGBwCKPsloBf/qVFakfKbKJ
	 mk2Smm4rn4oj1d+Xy1lT+Qn+ftCvlg3e/ZDSFq2xenIUkJ2XaAAHxIhfzUT/X6fJms
	 uRCGvBpUBLMK5F/fzUKG/DFf7QbIkpErdy74e+cFAWnb4CayvblYJzTD1FDGkK2CLy
	 jZ69mo/Cxc5Hf/Px8TkET3btVOlhmfHbihD+MM7sRtGmrCwADObDUJQFuASHjCk5TP
	 LSOwr5z9mNqrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA9FEFB7EB
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190169358.28076.7832773465929865383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa808e5562b5a0fc2f46a2773710595469f4935bfd484288555ee37cc1c927e
Date: Tue, 24 Feb 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771901693
