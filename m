Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349B21C5CC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734533754; cv=none; b=h1xsZ27S5zzoRER7cA8ej529E4iMSbdbQRRHFu3V+tc2NLaId5fOxQr9divZfLeuqrGGWmCsZZwoc5CZjFnTDw0EWLTUwOVnLpbQH2EOw/wjqHzD5WeY6/ksTIbiEcENgta8abhre2r6HCGVpbyFx4gU2gto/BEx2czJftPm5AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734533754; c=relaxed/simple;
	bh=JxYV6dTY724gLz1+HOC2gvo24DcEwFN8zsalrPwpPgs=;
	h=To:Subject:From:Message-Id:Date; b=q2A41cND4DwuhtWrlWH3/d+zfFZKUQNW83aTI+j96DrguUQsl3rlToJ0b5I/c7b+sPQDNN9tfx9p8LIlbcz9R4pfo6hpBFewKLwJ7QMuSYuv/TSSM0brztJsvo/DnGpJEn3YzX77kNK6AkHvopd7Qi2iuM7jha1ecVaIFfq30H4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwRuvWbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwRuvWbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C6AC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734533753;
	bh=JxYV6dTY724gLz1+HOC2gvo24DcEwFN8zsalrPwpPgs=;
	h=To:Subject:From:Date:From;
	b=MwRuvWbD7a4k2s7Ijo8SsFuyE8gtGCtj5c5fndqH/wzKheJJ5UeOVf1nXrjw3qLQM
	 CgZoKJcop0qr7ihzJdkqQtIgDKfvY1rXYFeg3mSS5BR8DT2Bi+JMau1Gcl5nJits2u
	 e6niZd1hWrCJFzE19989zkmaKisuyR9OHvKudZ1un4JiUV127AxlDlQLkrrd8FEUcb
	 T/8q9QQ5FcX+fsnBb5XkpYwxIsOPzXIMutfS2PLY1aSgj2nbwBfuZNJqPcymhMIDcW
	 hwU7d1pjRhQ3iSs4Oqh/+7EXqba3UuqT8v3J/swO5U8LFN4/+gSedLqXvMBc1UyK+0
	 o31sz6raENXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E024E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173453375363.13521.14676849560698169490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6c5b972b1a1a6b82cbc17d0c8fa1e74a5b66fca61a777c023c2ba188e9c9b3
Date: Wed, 18 Dec 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734533753
