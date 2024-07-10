Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4392CD535
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720597583; cv=none; b=TfXBNsYZ+C16r2EfA+940GX32zKto2C+PuXEbX9DyaxJ0GhzzuYtUdTv6W8YD7iISDkWgdl4rYvHVaGnGsO5H+xKt7VDG/7hdfxq2zDMP4kM8Kp7UeAwAiY2nH3fSkC4g2GJ0ElQHKcPzy5vlYfapRmT6t3wbggFhc80q/f3yzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720597583; c=relaxed/simple;
	bh=sSyKldUZWiCTEVbj+wXGMbqwRB9+eMEWI14hAQ2PyWU=;
	h=To:Subject:From:Message-Id:Date; b=Wc7i8keFdhcVpZN5JmTUVcZZwUafsyKpS+bw5MS3bQKO8TGpkrtvf7sjf8FBLGZTfnN4J52Bt6jD1zbL5/wPt54Dxv8GKMKB0rYB8NRdkP3d1CaobxY+sBR8rgGFUTNBc7/jxEYIUAvK5bD1r4h/Wrtyv9XEyOiGZ791DyQJKX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icTXnp8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icTXnp8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC50C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720597582;
	bh=sSyKldUZWiCTEVbj+wXGMbqwRB9+eMEWI14hAQ2PyWU=;
	h=To:Subject:From:Date:From;
	b=icTXnp8SWOhiOLZQ8lH3NHEEX/v/Ym9MhQaP1B2wdxCLK0MEsM1z8ft0fb9TIL55X
	 0T+/XQ6g4cSmIcEaCBet+FVCaLsYrFECi0/bNH53jirhen77hbvHTpBd4HT6iT2XBm
	 iFMEGQT6G6MeeJS95E+I5YGWQlwPxx9K0/lxbIFQxbr5x//EAK/X4LJJg5nlE0/E52
	 TVufMLnlu9U7Ch+DUIAWT1jnPhGFCS+DAyOWDdb9Y4hDdhbH9vaPKr4y7CttzO0c/S
	 LzhO1pzmD4rSzMyk0+4aUiBOnsp0gGxLUNXR35WHr4qmeB16BLoT5FUHIZNgCww+ZL
	 Ly/rLToHER8MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4A6C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 07:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059758276.945.4157557618755925045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23336159c84c63811b878234c662bc04a6c12a0e80c75eb8a21830963d04eade
Date: Wed, 10 Jul 2024 07:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720597582
