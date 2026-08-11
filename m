Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F2B42F710
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786448434; cv=none; b=ApdNaAvysXNWp/AtqxQYgRMILcs88iOQQJnG3MNtZCTDNybkYc27TQRRerBQN8gKBMTynqBkC/LyZcdUUk12K6wX2hpFQ8hhkEi7q0qfGkuokSeDd8wASI0ZzCFYcywaS44L+wEYVzDdPBFXkBLDjXEDtxiJcjF2zYLdYDjkZTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786448434; c=relaxed/simple;
	bh=8O2wwK7m54HIscz7TTJEAwDnVjluTIZAvrRCBhKqBk4=;
	h=To:Subject:From:Message-Id:Date; b=lkbxfq+KpelhNxw4PMD4qJ7OrVh7241lt4Egna3WyKQb+UCFKc9iyOo3S28M29/QhuAslxGjfG5ugIFUTJWGrpTXiH1Qc0F6q42P5IhZcwWrwUGbiCC22pmbecbjotq7YCppYqli+aeAf2bqwd5hxrXQzyOAU0STbwIT7Ln+bZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fvdne2wj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fvdne2wj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0B8C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786448433;
	bh=8O2wwK7m54HIscz7TTJEAwDnVjluTIZAvrRCBhKqBk4=;
	h=To:Subject:From:Date:From;
	b=Fvdne2wj7VR8OJ/UB3aq8X/NlhdB/PHzf5FQpyDT8WY+SP/gYJDYpsw2l1i2gEqD/
	 Nm32WdaM/mVoGpLLQ6I1sCzXS3N32ejGNYYHotdU6WIWRknFz1aXrexYBeXFhgLsAC
	 fpaF4X8Atrvpmt+6T/c1HZSLF26PIxAfpqKBPI65PR+L3XN2v4kaGAZVuVsz+Ktl8p
	 4CiErBSKU7F6UegKMr8kqPnh/7Yxuf1wtgCgdhbl7N27PActKweJ3lbOO8bHLaDZtV
	 l5nXt1uhT4PfqsOUv6n/lb7SbOSMyOeD4Sw498LB0R3NdS8QDIo8cQAM0oCI3Qc5Ls
	 /coeFQkflyOOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89ACC5CFCF
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644843368.21722.10382021480267265137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb2532209379e54df560f36ce0cd73ed21885a9112d84405d055ffd542647b8
Date: Tue, 11 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786448433
