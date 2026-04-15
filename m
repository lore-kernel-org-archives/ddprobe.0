Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D82831A04D
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776271054; cv=none; b=uQ2aIW5K1fbVR/c+M+7Up0wajpEFx91JMDoRma4zwvgBcwYNJKuz9ht/eJ+4lARKr3GDCMnmst7GERWu04blhiKXjd6aixpPh4f5rlcSJFLOGbcVXgsJg/8Cn+Lds4qbtv7XkbEWl3KVXFjhKPVN+SieAS037hOb8llYpYJc668=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776271054; c=relaxed/simple;
	bh=OPmcrNg0yyTN/RYFZzRXYgSPE3vP+9+ZKX5pRFPtAHc=;
	h=To:Subject:From:Message-Id:Date; b=D760tYCJPHDbbtJMoPBWZQhYb4oWLrIHEty1Ihs7MTKsix5TnPLMdw2GjQn1uf+Lf0izmeNOAeUMY5cq2MzQgTX1KhL+mphRO7NiQkVZdOhHUEEWdCDU61eB3mp3AQ0dGWmfxzke9WQYlX80mw9xkkoibWtu4tsMdQr+mI4gG7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLrxfyI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLrxfyI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEAEEC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776271053;
	bh=OPmcrNg0yyTN/RYFZzRXYgSPE3vP+9+ZKX5pRFPtAHc=;
	h=To:Subject:From:Date:From;
	b=bLrxfyI1Vt2ToXekB9Vm6iqnRHiWREU2IiU73LvLw7ScmqxpvBlXtn7mR0NAcSmYm
	 wFN2OhfrWSNlLGUbwDSawSZMwqZmIvwUp42s6ea5BXgh7IEkOVMr85ypzqAeYPL5C4
	 7jq0SOTeezDjlB+niPoWeOHOC6HaEN6rKUdWHVCf9fWijJnqGEhPpKMxc2/j3PxATY
	 oyEPfND3WMaskO59cUTa0sj01knkzzUA0CrTfRwcIIHHRzhxQtLP94aAJyGLqsGkbA
	 n7Y498OqFkZ25hz4GfoYPX2Kx2mqUv6sX8x6U165tleQSJN6qZz5SyC9Ua87lIx6jm
	 1uxGnwvsU0t/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0761F43854
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177627105368.9842.260460652819019194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4afb590bf60ef79a7dc45880daf152fa58e659250d562351ec5f3d5256861432
Date: Wed, 15 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776271053
