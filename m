Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473701DC04A
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737752154; cv=none; b=KTeWCh8fo9qvv3SZcdvvlW6Ohl14Sy55VRG3mzx68wNWeVYyhG9Hc+u7weuDTjhuyiGE0BaJNbSqugZDYXY9LVl4ly+raDlEJKTok162hVxBm2YMWnRoof4wNJyZWJAUzj19KKJY1aRjZiD3vaHa3T4qhJOkmzKFj4Y7FgvsVeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737752154; c=relaxed/simple;
	bh=a7sNPAJ9A6b9dUbqwfQBrlgFTL5IgYJ1fy6ZxmudBNA=;
	h=To:Subject:From:Message-Id:Date; b=mRIg7PP4xg+S3stOPP419SC29laa/1ksJVUDsqQXPOCwcodD/ittkdZQ9wMgZBZ6l36jNIT1P7nWJJmL+eIK8QTkVMkkZ6RPzz+M3brJzMEA6jJS+rF5KJZSGehTrPzS2MQk9r7cL2eKaeq6khKcxRgDdFqbXi7UTyxErYF7G7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WFMZEPDr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WFMZEPDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACE5C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737752153;
	bh=a7sNPAJ9A6b9dUbqwfQBrlgFTL5IgYJ1fy6ZxmudBNA=;
	h=To:Subject:From:Date:From;
	b=WFMZEPDrpHmWQQS1uU0I6riu2n+er86Y16qEU564VQJeqlOIwoX6TNZ4ecZ/sAmbN
	 rnFUdeFhOWFyqggp9PalhtSMu1l1RlaJWzqTuKfXEXMJDmziC0501kDPNS9wC0S28a
	 9yQBWVha8bEhx7t66jj/BcyE5eOGcyEe9TO6rGzHorZ8Ix0OuYFG8cVy1xpBAevlhR
	 IaRiKYrmAmT/o9urEBlTFfd9itOegME4l7ht6+cbzlZ6AdbNAplZPk92pZ/aKECcEq
	 2cM7l4JZSpl6kRxPUFhvVPTRSdN0EHoUKEcZcIE/3ky2un3aogfRM47hQs4vEHPt7H
	 jEyWUVjdxGpgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919FAC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173775215358.29449.6140395057962021179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad8a236aa8bedd36c3c61429d3e15bb3168003a641079d15e9b8672d3319b5f
Date: Fri, 24 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737752153
