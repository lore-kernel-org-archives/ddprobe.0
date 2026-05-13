Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EE23C3450
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778662834; cv=none; b=Zv5Eq8tK1skJ+T998zB/6QKAkCFGKj8nOyfYn/cHmdFneT2iCB2DpW3BbiPkPvMuz5hZMdz1FIuCr7Ll5cbQot0jSs/yP90RNUI81I1YQ8SiwMRXKGIxPUl+bHvd0xizeeCf0KMAU5XwUe0EYx25biYYuEl41WoZNzxcSr/uGog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778662834; c=relaxed/simple;
	bh=KVbMExzInlvroM5GBch6iJBUh0bkrOdsplFgnE7O5A4=;
	h=To:Subject:From:Message-Id:Date; b=qSanZwrZASh4Lxp6HUW4N7FTAtiWe7pKCrTtoO8IBxG++oIfugPiX/w16TSSuvGMIPEY+ZaKLr2cwDdkHr4qiNyVdtzjoQlurYxAP7HvGRfJTbYFVwaDvhJyLqB0z/3pW5VfOBbeYFil/TGJLkGs23sP4Ty9mmmTdKt6pV/KP0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkI8oj/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkI8oj/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8288C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778662833;
	bh=KVbMExzInlvroM5GBch6iJBUh0bkrOdsplFgnE7O5A4=;
	h=To:Subject:From:Date:From;
	b=NkI8oj/BfRZtx3kdUX9Zoj7Zc3JiAmmLTaExA4RD4Z6whHueduQXGSNp1qR4G7lL4
	 mVkQE4jKKT+IfQA62btPkuqCh/f7kKwMYKsJavJ00D1oBMxo3tXoemykdki/SHbQu6
	 00Snt3PsUL0/vSuU5kqSnHxQGLXnzMw486lU/lrLiZNsJeAQ7r1vDXyArfTBZZM90R
	 S4n8Tyck3FQUHRHT/GPO9Uv232/obbF+CIAQlPAmtvd65pMPWk+rCBbGCIognGgUbK
	 ktUcBHEM2LVxMdV0Lz5m71HwGXZ+gNsvcUAOQaqQZD3Hnm7T4V27iKHgbn01YTAASV
	 3yVDYO9jLtbEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A3ACD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866283368.15261.7345392344320942665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c57d347c5d6467a9e69feb98cff0749e2d3588db4d946fb33fff71e3ae3f8300
Date: Wed, 13 May 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778662833
