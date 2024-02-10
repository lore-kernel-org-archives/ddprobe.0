Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0807436B02
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707574697; cv=none; b=bNBYoRymSCQ6JgqePk8vXngi6Bcq1+7Runj0tLlRsvpbjq0Q8bVO45bAXlhJJIA3Nn7RyzyIrKZsG5ywWKLuv7XfZIIS3pnANiPpKbPB3YBFxHtQsHngQOuJaf1d2Xaqhr8bCV4xc1m8YEqkQzTR8iHpRBflOT/8UR3SPUML/z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707574697; c=relaxed/simple;
	bh=P1Yup1cRVjqRJiXvE5vS9cMcygiVtDOoaezEx5peYGY=;
	h=To:Subject:From:Message-Id:Date; b=gGUU4A9rwt7u3GwgUjIvue+UnaT3YnkDkgJIrWh23maIMLn4VLnhLiMCHIqSoG+DPpj00x898NecDvSnEyJNnNIDUW1Lv6nLNcnvhsu3/rcPlHVMcwRGcRk0PnPdEIs6PYeukedHuqM2/aIoJhP9Ui9h3M0qetxTYD2tFg0FBB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGEyPRrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGEyPRrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A1DC433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707574696;
	bh=P1Yup1cRVjqRJiXvE5vS9cMcygiVtDOoaezEx5peYGY=;
	h=To:Subject:From:Date:From;
	b=MGEyPRrMK6W1f1itGc2wEjP/Lx33vDwwyjnGYxwgqvF884NAYufzTeQIrwjVrpuKo
	 veBCg2ZePw4LhEM56pRWbLDrrXIoQlvehNb4OYOoJ8jl5IX5A6nxorLSWSGgF/DlmE
	 Oz11FEj4NMXoH3luqO2eT0QzV1Alo2LlaMjqRz5B54P7T16BDn3WFFTPA9WgROJIcL
	 utxJCh5teJ0Oy9s+lyR9gPSIMMp+XTY9pvGa2PmLI3Q1UCPokuT12gCLYObd+Bj7BY
	 fa4rLbI44mDkkspdqs2QJ3m37JsMtX/7Fj0A1U5qpG97A+F/6RMzl+kYDxha4mBBV4
	 laM3LslJUD+aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D0ABC4829A
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170757469637.16136.17678915072563065778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6949f87d940e6ab0ed3a3e0766b7b89daba570a9321a1a492d12a96e43943d38
Date: Sat, 10 Feb 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707574696
