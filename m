Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158952DECAE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749817795; cv=none; b=rPGwoqc8/Itm5FK/s5S3IwujoT1gzb0jn6N83Dgdqn0cHQyhxt6i+M90NEMpEN7Sen/4sXrmGAGjfvvWESi3XFrd6j2PjOynrGG+OfzEtXh6LRwnH6MgxlVyEs0Mx+RUN16Unk9nG7SeIcR0AOI4cMmqNOfOkVjW+l5BJtU+NTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749817795; c=relaxed/simple;
	bh=GnF0iXI2RQDogFKniCH8FP6/aMKnnfrVrPASRDjr6bM=;
	h=To:Subject:From:Message-Id:Date; b=YB7d5Jmc0O2xt+YRtF4oK2K3ghSgtYw/6pnrFDN4NJ+/A+yS3QK9UbExpzoLKIvyLv+/pAcsp7NisMiZCY+SaNZQOcMiI5erXN4fWeJ+v6+eNVroomFXuLAWdkOEiEcz9wv2agJMTle3XWinvvQDqxXAkvpROANqA0VJ439zB9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbwoGmB6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbwoGmB6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19F4C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749817793;
	bh=GnF0iXI2RQDogFKniCH8FP6/aMKnnfrVrPASRDjr6bM=;
	h=To:Subject:From:Date:From;
	b=hbwoGmB69DruvzOrM/UgY1VDl73zQ8LPv8MCP011P91vLCe9v3JDQ3dwJiKwFKh8k
	 36VCGFcwZZLfJDPPsIUx/24ZPr+d+ZtBP/DUUHbpdV0uAuZdexzSAj40S2x6jeLBKe
	 RrOpSHCCxcNevVQ3Ex6WvgNB+wxE3oTTJAZlfGbbTEld5FvW4lp/RsGbscb6q7XzOF
	 IMnpLolyTvNqSFP6nwkleDdE7lRQ+aBvmy7OwhpQBuva5CGVpg/gng2faJfdWx0m6N
	 srvIwxAImHCOsHSTh1Xw8IKTF8vWhbVYCy3CXOkYwF1ALSm0A6DVNeyZ5rBI6fbbqx
	 viCF/y6BmoqmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F851C61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981779357.30884.17026406116692646193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d2ded88ba12f94469bdf6ba190b83b502f3fc524da2cdd1220dc5f378d4468e
Date: Fri, 13 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749817793
