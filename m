Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2B6EAF1
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745025594; cv=none; b=BmMx8zfxq8qjNS2iCL3fcRPuHWYyeA3IuBh8UsSJMUt8TWQVRbb1fUInHUeCPOjlkk5mDMrO4CqGnwJH6p9CXOcoSZKqbRIHdXtrdYaqi40xjMrnIBj+eN0HMi7EZ09aECmTBm+7Npfax3xGKS5ClQrTg5Qh3iJE/6m2P5y952k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745025594; c=relaxed/simple;
	bh=r15ePKFkYCDrjL3pU/nTkWWcuiBoqWMpCpDzgjzmbe4=;
	h=To:Subject:From:Message-Id:Date; b=IoJRFPBxuKsc+wByOCtbbZAvlMi3ZB3adPDw47ulHYX0osdrYKX5JBk08Kg0dqpyHBbkdVgNbIK1Z2LbCooLGD5+vCTwiqzujQDiYdVLyC5nD5QNqgGsHO5n2jyG2Ml74j1cnnFZ2Kg01xkFyDaiP42a68kkCHIRiV8XhPL08cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fx1JB2t0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fx1JB2t0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0F0C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745025593;
	bh=r15ePKFkYCDrjL3pU/nTkWWcuiBoqWMpCpDzgjzmbe4=;
	h=To:Subject:From:Date:From;
	b=fx1JB2t09dhRQDvhx4gwat3xXG47h9YArpUTFALwsXlwoLHiG0KfgH/+rYjqGMrDu
	 LOxCWnakmRF/9dsx5noSadZcG4EZQO7RiL1iDe995b0YJjDyCXB48w0QXPiGuiiYb9
	 kXM1NImZtRh2PNi0en8Rn7AkUkLcpeksz4tbwlhSFufsSO9xLt7Y3iWi6sb5ryP4lz
	 Uqffv8Hq2dP0V1lutNv4ovRRMTKvNYlmrb6ktHamyA0lybHPVM3hfIVqYAVGyHGmM3
	 9ya8QH6Ns2YuZPwP95w5M7jIs2r1d0WnwZxLXDHpF+fUxl08yvA3vzDXxVeqWHQrIZ
	 46DhcRk9LSHpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BA8C369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502559360.32188.6534568721183934529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8967f15260428952f55eabba46034e2d897ac2b8743586a998996559d88429b
Date: Sat, 19 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745025593
