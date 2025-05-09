Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B6928E576
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746784795; cv=none; b=qnUYW8Sc57U17MInI4/CWtPmtBecB+aaSThhPPw1iG1ro09lUKLhhlLu60uAjH6KfmrhD21Cu9evLL9lHRleZqZlnXx4+Iei+jHeOorQc/3nJ4OLkWyrPn1wjX3t3yf8aJ18TsU3aINHM9svIpSosSuR5uniwQEPoObzMlZC2Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746784795; c=relaxed/simple;
	bh=fwj89et5aDL6WVH66LLZZ1welHvfLKS+EssaeaCCEuU=;
	h=To:Subject:From:Message-Id:Date; b=CLv9zzhLOhM0e8K7Zphep6LIwP4CGCtLKSS6UM3nG0cdOObCTBJKCGLadDTyWlrn1E+QdeCqAOSWohBhv/mSDXpQt8KR4muo9Cu1c034B4XdQqDFgJrKWMgaZT0ZvEc0+g5auOx5fcqp6Hr8fCmLk/NCfXkS4M9GEWjulhHMaG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkYMnxRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkYMnxRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A316DC4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746784793;
	bh=fwj89et5aDL6WVH66LLZZ1welHvfLKS+EssaeaCCEuU=;
	h=To:Subject:From:Date:From;
	b=kkYMnxRVkr6kzWNwCcW+d+gNqFhNFZj9SRKWThQ+95Ihuchy5r/1+mBl0IE/CoFrt
	 rtueSf/NP8KiN+zsOYfvmjj1uQ0xkQQzJv+H10H1VU7GBIWQO4Z8FdY3JDu8k44lfs
	 bSiTc46tTzfSB8n8Lmr9PMV3Junpeyb+RGCX1X7yEOODH5YEahbMw1x5dJwVkoSKG1
	 riMQd+Uy1CMKFXkHlzIWmDK8JXkB2WfK0qwuy/reWkplR0snX4j6OKdE8nNgE9kV6c
	 ey1eYW7dB8aazCqCRPtkdr9/f+X3dI/ENvi7qRVOWo8WoxvJTIO45AN2QOBvS3W4Pl
	 FPa/ZRed8Ly5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59AC3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174678479357.11912.9437360185577761954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7b11be6797d09650f0d5f72e32aaa878260faaa664073ccff962269642666dd
Date: Fri, 09 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746784793
