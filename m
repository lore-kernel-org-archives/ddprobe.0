Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428EC179A7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747532394; cv=none; b=clugqg7yH1eFc/+f25V5mhImy1OwledWH+5i0xo2DIkDzJqcmR6B5ofGGoosEBaqPlu6A4BU1UvNk3JDbR+4lVsSVmTqXONBxT08nuEWTKd0F5wT3UmMmffy6FHCGuPLa3QZrS9L3JNiYmLylkaPwAxdyuYdmCLKXrwasQ9t8yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747532394; c=relaxed/simple;
	bh=jsXSE4ZmOMObB+fQHvXoEGXL1x9vw/tfB9oSmwWrLog=;
	h=To:Subject:From:Message-Id:Date; b=DQZ9cufswPIzPdwl1C1VZK7zTjcq5r1OjVPO8kY8rgbOfSc05/ZVX33jPBK95cdKZfTyk7e9ZMyqrYBoHvaBvkCLykXdPSACWRhMhQT6cGmkGxM5a2PeN0WDIWBNJZxByv1r0ipmzRc+OII4DPPMpLDNviRXPCCwhWQ+RNmsIU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+yyfS3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+yyfS3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CC2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747532393;
	bh=jsXSE4ZmOMObB+fQHvXoEGXL1x9vw/tfB9oSmwWrLog=;
	h=To:Subject:From:Date:From;
	b=K+yyfS3T57CpB5PPfwNXoSDe2Dkmj5F1+VNtg9egCdxS6juh/2oVyJXP8kAHz/ly5
	 2fdVsY6ZFNDNyGp0T5N6928mjp+xKgoNMoVygxDKx/5IpQKbRuJPJtZzUYRlMilI92
	 riSjqWvX1RMIcnf3agRqKw0dSRIWXS00vDFpEB52ohPEn1OsJOHzgnrUZmPav9JxpQ
	 GI8qIxNTGOhDYpNtiSP/ljVPRNMeUmVJIeZK4awgOQFw4XPBVRNKZQOOQMIuNq+0uL
	 2nPHxn5XfLUEl02E/oFI5Xb3BFupNPFFkwc6jjxVLQQgks5yz02BaTbBe84jJA9AXQ
	 jp7HSM7zwxIXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BBC2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753239357.28011.7971759642175818111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37c0ff59eefd4e004584c2a3aac1295655dd92ba76edfc2a210b0add281d646
Date: Sun, 18 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747532393
