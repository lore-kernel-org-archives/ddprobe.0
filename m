Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1551DE8B6
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747866595; cv=none; b=ViCTNzvHFnPmeVWdZcn06TfmYV0Hpuy65aKCI30W82pCZ5PHd7x+Ke2lSkgbzyKoWon/RS46aBgOY9n/Dto4UUe9cPaV3Z6QJICOdWTDyVe7xM1uzuKQ0vdEI+rDqOIWma0bwuYRO8Iy6juvY8VWSZB5Hh9/USn6WSHT9BWGnCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747866595; c=relaxed/simple;
	bh=OjrP2vn4AnY/QNLe+PEMeAVNYmw6Z/i8JqJ72C6y5xg=;
	h=To:Subject:From:Message-Id:Date; b=ZTze2VRhK0WoqsLqyoIhTNIoNz1IO8ni6eXnhDdJzmUwcLXd/r8rLLaTuTdBu2VVMTd8X3/FxEX7t6LlZactP7pLbB+XBAptCqq1R/ioQj6VBlhWrRsMzLS/0OgaiPuT/bIpQw9DnivcIYJK/MMfgURIB9AaFMB8r5vnnmZ+h8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doqLQbtN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doqLQbtN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A2C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747866593;
	bh=OjrP2vn4AnY/QNLe+PEMeAVNYmw6Z/i8JqJ72C6y5xg=;
	h=To:Subject:From:Date:From;
	b=doqLQbtNRVHt7Y9YLOzaalrFN5iVCQ4595lc2zlfPEfYCPG2BNwUEMgg3sBWBXzKB
	 pJj5+a5yAiGPqfElRMFphxepx8O0s9XoYF08llMhZRn+0Y5jowrq42LTWF3H2gHsFT
	 eHhky0lHLLD+Ncfa41+MmZZIitp+aqLxwyz+8dEQ3iwHRKVjafKuCVWNuNxsT1+64b
	 NcL9KUG51hbK8TOib63aLebMs650T2ok+zQJgx8OVoe30FajZYCB0W/fzgeWRdjcjh
	 JZuIJI1VDTS3TTulpCqqDKhG5RcobFgfbWNUO+Y8xDB2sC6PitBORX61oN8JjGFX0Z
	 ibyCDYibUMmPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AFEC54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174786659358.24647.1027332137949336620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2888a1830e988a5d504836a1697ab42ae3cf639a0eb2a614360f4239291162a
Date: Wed, 21 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747866593
