Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D9E2AEF5
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738482954; cv=none; b=aheZsNt17+bjGpalNaVsZp963dlXh1ZLs5Oo3iP7vLBOwM5idsVzKSHOmVezFC/rrSzxeLYAA5zjc0JgPqIemwJNK+bC7FVLSpIH0RHiSWkDhOUiSM5Du0fJjKvuGAGpuqWyQhtSUspzOZ4osJVlwJSTJNQ2q0pZQvy99N1ywBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738482954; c=relaxed/simple;
	bh=wwimyJWfLSvVJEVbfDsn0rX0a6XxJ125psOuORgvchk=;
	h=To:Subject:From:Message-Id:Date; b=BjgaQMogqrGtdNywxuSvFmEfJY7rrG1h8FwzitTEqP3VG8/aFADhS8WlRdm6EKMuyZXTaWJj/U6wrTeiyPNnDBzN4mt+Goe/MWaqMVqARd6bdSao3Skh5Sgz3ZEKx3IqDA2jPaOL3mlSXDiRQpWv7P8vlvTsB+vKFOtKlSAvo4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e28yRlkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e28yRlkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE0CC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738482953;
	bh=wwimyJWfLSvVJEVbfDsn0rX0a6XxJ125psOuORgvchk=;
	h=To:Subject:From:Date:From;
	b=e28yRlktaVgRqITdMvFRpHfJwK/Uq4ow9AUi2NvPrVTHfrkjuq/F+6tx7bUQoRjsm
	 ZNfWxc9Qkmy4g0LeNTaKhS1CfFcUNYqyB6PPW8PgfMqySERoJMWM+jmn+bLNEtvLyg
	 yfnzhyy/G9ZUwpPpbVivnqiiXIx8HUTM6Qt8Ek5LuZrR7q+X6tH/bVypORsg536gM8
	 MWh/CocrfBL8mXX1iVHE1x25Q7rGOISFynG153bbpwwPrQymvp6mVy30qBpeP6hBuI
	 h7UNXn1U6FqV6w4tUi3KNzSqM8MdHVo1rMluGvj1Vi0otYnT6zISF6aZD4xmae5kyd
	 ISs8Imdi42v3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996C5C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173848295359.5846.9157853415091490491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202f7de5e120dbc5717f7fb684979950a86af884f420143c656cbb30d6229592
Date: Sun, 02 Feb 2025 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738482953
