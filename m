Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06FE410957
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763926314; cv=none; b=mw+Fa60GWDc9s+hfOcGDMcJh0Oc/3Q+WThRTF8bEJ9YjBb6DcV8Frl8PES8owzf124DjPYZEki4avaGYH6LG2EEEhQ3tJfmadmZLB07/1eXobMbpgtqpppayEOEreCVGGfk1trVIPC2Q5LyxDqFHsuWYM/J2RWQ+CGi2agktzzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763926314; c=relaxed/simple;
	bh=FkOpZQmg5fOj+TN7WP6vw8nIkYk3rN55My43kkbHOlI=;
	h=To:Subject:From:Message-Id:Date; b=DUMgkIWe4ccqJ1AqzCxxUPk1r5PvAGnnjpMcuimmlTW7SyxHN4k4yNCY0M5c6NR70XQ9oJCUc8+cunl/KQvzWhKkbSTKVHkpId+IN4kRHPDDPS1BoZdwH9PumhHUypB7eXRNsG4f4OVD1+DuKBiHGi54lBXWF0AzWn97pZY4uhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o7kQRk9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7kQRk9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E3AC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763926313;
	bh=FkOpZQmg5fOj+TN7WP6vw8nIkYk3rN55My43kkbHOlI=;
	h=To:Subject:From:Date:From;
	b=o7kQRk9W1+/eoLEsU+UWginTP6vRrYzRp3aFTofE32tzarOGn2ftalgdFhiUe5GO2
	 4z7+WBZU/GPOXxUoflHe/o3/8eFHEWJCUEY44eljUes2TbYwUFYqBMafp/Jc+reXm8
	 N6KjYE4On0Q+JymsCIRFbers0rQ1QfyxTCmFh4KaxEb1dedsgSQqGHRWGAGoA+EqOl
	 shgYocyv5CKjxYtlU7Qfrfj9X+xnXRhRSlYYKFxejjj3S8vfNZKDS3ZFYRWKK4Kq2r
	 PBYvI0Vfpfp5rHeGUxZZlolV4ArvmHbjKLjPmBl7trU96+c2aPjdvbSvs5K8Udh0ah
	 3GzwieUWFw6mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E6BCFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392631358.12060.18145672287870450046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64dac0e057d4256e8777df69ac18bd549f014d7a4e8ffc007bf9dc023e834832
Date: Sun, 23 Nov 2025 19:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763926313
