Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA5D54A04
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748417393; cv=none; b=IsHWMCvyiEs0aKU1Da1/HXIwWcISQFnFFTbC9T1NMUip7CdO2oRJ2rRmTKeHz5zUKN6FLFsRlrp8ss/TtRn2UkXt/INJNKnMHZ44/SIgDHnuPBHX6h6IXPffVQw1EMpg5T01AU/sx6hYVxD5E2mpFgvJgHqfMirh9VcX9dh5W+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748417393; c=relaxed/simple;
	bh=0SZ4FPDuFaye4PKq+WiM8K6wNSQP6RY0TY7QIjKvGrY=;
	h=To:Subject:From:Message-Id:Date; b=fr0UFFNUZelXsuWOPKnf48JGHmHJ8MODGkEqq7OJXucC27pJ5k1AIVnyD6Ama7WgW42IU+XF03n9mMAUkijoFAWunFxJT3di8tkVHxW+oXeTjLiVAJGcnHXlpiiicXS4dwsESm6OUE8M0YlykdpxssuLxDjx7wdS8l1lB6EY5G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XkoPtfHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XkoPtfHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F45FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748417393;
	bh=0SZ4FPDuFaye4PKq+WiM8K6wNSQP6RY0TY7QIjKvGrY=;
	h=To:Subject:From:Date:From;
	b=XkoPtfHFYYd5jSKr5bouX11nCFxD2Q1rEv9PpZ3RUoTjcVYtSPKmAzDkS89guq5Xv
	 q6jmv/pCw3YGQ/2+CQe26vXSxBPCaZsC72BJPtbRhtSFmOxvZpQvSJcAGYQyVcimpi
	 emxMKUUE75ga9n/w2w+nu1yIDBtJNndQQqThye+XFN4hx4NAkWywE42nc9PvGO3EiV
	 s+qgUtf8JoMpCV1yz2McVu5EqC9trCC+d2MON2ps+dmLTAr0J7JgzvmPCateDYw07l
	 k4U01+vVrS8Qw7yBKBpdSzjCGxLGQwV7mF6QDVR/c6Hg3Lyafl3VZev8n3ePV4FMCB
	 0wr5DSScCxWRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F488C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841739357.4375.9465061400604509929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8b39062329d15ee038d7fa062354737dc416384689275a194cde84ea6362b56
Date: Wed, 28 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748417393
