Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DA32EEE73
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785298834; cv=none; b=WN/yU1E2iXqKKu934Uc2RS36HfndlRrX/e8Y3ov4HJ0TDDj1zot8TMR57T6Cq5ldKFyj/vT9JV7csGt1Gq0kszpbqeHjkI+uNk4o7xrar0yRzY1qUkGfogX21y7o95Ha4x9IM48xwoLJckCaeuJK8VyS/+TDddxANFxwk1XsUgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785298834; c=relaxed/simple;
	bh=K/OCp/rGwQbBYfPScFCEa4s33Bv7v35eX9Uxy/Iag4A=;
	h=To:Subject:From:Message-Id:Date; b=QspJ2kl1PdRqVnDINFxP22oZLQ3ElkPxOfF0ndQpP0o+gQyqb5qvBEUj8jkPY6+rIRecA98b8934mEjUF40xK0lKKvsDwE2426Ss43EoZrEsR1HEs4MazMHIHHphw19UsC0YwS8XMi6X3Wscc1Rk5v0hIbPDv5diGwZz7xzOUMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDFjVc4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDFjVc4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE641C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785298833;
	bh=K/OCp/rGwQbBYfPScFCEa4s33Bv7v35eX9Uxy/Iag4A=;
	h=To:Subject:From:Date:From;
	b=PDFjVc4fSVv0c1XbBwT8zcHeNHhjwqMNxllYKFvJvtVvnNZfNc/J88trxX7E/gPlM
	 SkSKAYCrPd8xs2vOv4Pu8klTtEEp5Dzuiu/kQvqMtwY29SrzmbFTcVFRufk0Xjvh9z
	 KyWDdwYozFdPwgTQDiVmfVC1mGPtvdtMtTVoNKxypeSbIrYrxxoovVDoZau14Upjbf
	 62B+vZlipKyJXCeD5PdouikVuDJ+YXmQQTlsicIg76uop6niOhndnuVwU7pdjxBS97
	 qiuFgyzBBNpFPlIUwk/5QmhQZVWZG61QeEZaN883yjNU27bIGqlyIZm7D2UHFlscf7
	 M8Qeiao/Pqzdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99F5C53200
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529883368.11779.8680572313145406686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb6e66126c9e1429de84251f913e8db0bfcadaf208d909a24d62bdbf90f5128
Date: Wed, 29 Jul 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785298833
