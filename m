Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDAB325491
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773381894; cv=none; b=hawqxfrdyj+4Y4HegwfCwzpvoeaQYPPzl6BKXNxUYFwLnM8PSjm0T/+hmF1kv41gSA6aAHJpaT2cQsXLRwcxmCLr8UBKpCikPhV8yDBx3WNldTN6bteHGVh8FdctjQ6bJdVoXJoWngCdQqhxoV5GnRVQoFLWtUcDuvBpO7MuGUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773381894; c=relaxed/simple;
	bh=vhFjTpM7vh2nr+QqeEZClhbHGbhmCmCJeWaFf9BBa28=;
	h=To:Subject:From:Message-Id:Date; b=YURQlQMO3o+W6SvDVrLWCxeKiLoD8VFxkUM/VuagqpYYXbyElAP14gH8UMOSHgqaa5AT7N8JftyotPfcX1ugsikeL2hvoOA0EJwUAiLPFPoneTQHqBj9ZzlQs+/K21+6187D1MdS6ReAOEhhnkcQtHix4HE+1+QeOHZu9Y+cAnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VxuCjSRN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VxuCjSRN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF090C19424
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773381893;
	bh=vhFjTpM7vh2nr+QqeEZClhbHGbhmCmCJeWaFf9BBa28=;
	h=To:Subject:From:Date:From;
	b=VxuCjSRNnpVt25OOSbpLU+BObjMMSAXL/aemEhhcP+c/Uoh3Ow9Fmlq2IIsypvvSS
	 bB5zuitkOYXU360yS73LBCPsNDQtmYHJXCE4Pn8V/me4Rh5rDnIqJlG5xQ/R+WMion
	 jBBn5nAyrrF4u0EvV0w8kcC+yzhf+p0GCsqq00do6chnxPo8auIcL1M7YchgMTXTcE
	 sc8KfOEInglt24UqGq1MBCRDWRKPZykH/DJvplzQOZJLOAjJ9e9m+syFyHsmrM7eSj
	 GCiqddaB6ncWxVLNpUJNN16m5wqEfUeLNelKaOq8six+PapQkPJYZN14v8mASBz/kf
	 9rOBz4KGt9cog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9356E106FD82
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177338189359.3425.2520200368673882039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84676ea31d8f50a6b624d19411c5d7ba7125976603abea9ffc7929daf310e11c
Date: Fri, 13 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773381893
