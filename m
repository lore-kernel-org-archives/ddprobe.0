Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200DE4A06
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745376594; cv=none; b=WZdBfxGXgpG2FRYp563TK0hOb2U06+ytVBSXh4djDML1Ig3TUPnT3vIdRUUwZtue6nCvXNi9VMSgUA3T12UblOmsrV9gZRBbAkkamB0mY4KH6bN9V7ZtkLOc86QWqWlwzGwYVaYSp8reL25czrS58T1PdcG7JYypsNIi0EedRfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745376594; c=relaxed/simple;
	bh=gYLMZrx4hkhxB0WGZzo0zYq9kTlc2B5Y0oJ8sSyFcD8=;
	h=To:Subject:From:Message-Id:Date; b=W3YwMZUbrKK0nBiwzdf9FAj4hbC8gQU6FFTUuBJitT6cq3TUkFmbBT9Gvlb/2XdKatyKWrRuwnkzWB7Apgb6RJWeXqC7qP7O+6tR86pphGUAx4ku6mBExfn99EL/jEIrCe57qn99Yl0Bi6VDvZEusVIyMbREN5czrnloFERO2pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wvx1z1k2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wvx1z1k2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D9C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745376593;
	bh=gYLMZrx4hkhxB0WGZzo0zYq9kTlc2B5Y0oJ8sSyFcD8=;
	h=To:Subject:From:Date:From;
	b=Wvx1z1k2kBGmBNykzlN6o/js41KG0GKlcAvhdFiuREQv0v5ZPQeUBrX/y3ue5Gyci
	 OKaN2YnpQTuMm1iHQevUC+6S8C/1G72R8CPpPALlpmimwMynkIOYq8YvAWgz3+59jz
	 Bryu+yiuSDdYHdzZHoFTqkrydAYIxHZunB75rSJixm8sFWv5f9iphVekdRui7jgJkO
	 e0vc1wvrEaLkdnohC40qyJCIRostDNceIIzFdVT8ajHLIsIjn76bCr4voJtuxhG78b
	 JFP8n3kXeEKgbjYtAGatg3V6qr8ia3Aw02ngJOwfs7fwUuZs9TXxBhxz1eE2u/kZi8
	 VTr31+qU6z5bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9432DC369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537659357.11387.6781007878400851828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eff71a4910838359b40814aa21ae3f18a1b070f07f9faca351886c87645ff32
Date: Wed, 23 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745376593
