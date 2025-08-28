Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174963148BF
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756403994; cv=none; b=QjkogZddlbsXKjni4+5Xb86ekOmjq+oKxupaJYTnvpXcDVJUQnRNox1uLIypuyIhF/ML17aj7WlNhpmqgjb9XVPtyFMqFdPfto1SnlfxjPOlqTtsEkOFBEfeBAO4Tbt24fGFTo/xyH/i2pztMIiF0aaYgccqv6QbEai/vq37Jww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756403994; c=relaxed/simple;
	bh=4NLrFogiv2dLqT++WcrMHR2I18t2NzM4bNBqoR4dY9M=;
	h=To:Subject:From:Message-Id:Date; b=DFjjFzKvZYA8Hs1yRvGf8gh/Ab+4V2LVRutjt1mFgVi7L0sPz4pA9LyFK7m4de+M5R658Y0lMNZNaXIRFn7V3c12ecLKhCJBYMK+GK06c0l4h6Iw4zYGcVwfcHGTsDxjTxhENmSX92LRPkTNulBcG4kRk9F74YdmcAA9TebCc2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pt8wWxqc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pt8wWxqc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10B1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756403993;
	bh=4NLrFogiv2dLqT++WcrMHR2I18t2NzM4bNBqoR4dY9M=;
	h=To:Subject:From:Date:From;
	b=pt8wWxqc7fIY9MEYYVCqLN74s8GQa1538jiDUBH4bHbxVuYqqmlfpF55skFEqzU9A
	 8ogVKFWsFOCqDpYFYR4dO8kS9zATkiCCmFhiNgdLBk7QH1+JgiAhwygAeg8KLhcpWg
	 e4rzmpaTDrzlIHCvTjfDyt6GvvYai2ZLbKMo1Y8emr4mtMJm35s0ZtiJyZG1IAJ3a9
	 SkIE4JL5jJFF2WnfNjEy80sFXrumCCXsbgity3NmmBDteCS8ON8ApKLgOXcR9YTF5a
	 S95JauCdICw5Lven4GhXYuo5InuAXfm9Tl8L0WilPwU/8qdDzFx6i10y3FcRIVcxrv
	 pJp6bCZ9KJjNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB9ACA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640399357.30124.14446132763755211889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 870850812932c57331a67ab37db088cb9165c3af5f670fbb843cd6c75b852d4d
Date: Thu, 28 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756403993
