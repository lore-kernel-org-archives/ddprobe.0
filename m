Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D275315D32
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758212994; cv=none; b=aRccXlsDb/8u573yNMDjRvwiTdlQBw3JnBLgTRJuqyMz726rYOj6Lv8COs5yR53mbnfafWg7ZLSf+NRcoFp2TrBN0CKtqtVYG/YF8JA3krT2ozcn1X8pawgNTmCMr+33/pQxZxN44Uq/Vs/dey066kPhFmK2ipaccw2J2+GjLd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758212994; c=relaxed/simple;
	bh=uJE4a9PhIrC/vtdVKLQ9IDsNBrqMtNQySF9DlSgiFjo=;
	h=To:Subject:From:Message-Id:Date; b=LVKJZL0r9GZIiLVKB92dv62fsHRAfHpj/yW5lnHrR/yL2VqQLz/e/s8SzvSq2Mw7Phum4nDod9rRSmNXC7Vcuqg8xqPJ2J1G7Sc82N7jjLfqA3eynYdtVYDQEu2CUxcnMC+JeX0zFZDDFPNWuJRA7yYY1ib+h7L4xHYDGF7Aw0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vk6IR6IY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vk6IR6IY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1432C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758212993;
	bh=uJE4a9PhIrC/vtdVKLQ9IDsNBrqMtNQySF9DlSgiFjo=;
	h=To:Subject:From:Date:From;
	b=Vk6IR6IYBLVjIcyFAUwx0zk5LfoHBO4sNmXJr4+xAe2nz/y0Z5BvPs1g8H2Vp5b3y
	 /F32mmxIB+bwwCKFL+v0NPVkruuURfAhVMKNyU1V4FqHVpoWmIeAoQ/Q6ObctgFraG
	 YaFizY8hG8foPknztDWoTP1gezENNKraZx6JJx/9o4vWBCoEi9eplrdvYUJykyetFI
	 nJ1YgYp7B4ugslUpAR8KdEM/PWqGtuzQRXrnkPYExv3Aws/4lJGg1HHkUcuyvgeXnN
	 t3+w/+vahQO+w1QZ727o7HjGn3FXSTu8zHAttBjzb0vW7ajSnzCJ4zj9NY8GKbtkil
	 gPmeh1VpIGVbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BB9CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175821299358.7122.14469470980529476857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 551e8a6e45a12fa45a046fa2535483d425fb7a529bdef57299edc4148763dc36
Date: Thu, 18 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758212993
