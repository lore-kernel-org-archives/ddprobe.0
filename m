Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F66B8F59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721441754; cv=none; b=u/UVVQ724kHRbJa0PXcHOTe9vtZhYN//2NMQ7tI8psYTsLT7nYReSQ7FDp5ef/nJqg+QA/fUxxaJo2jOIRWDTWzJUPq6cUaKYhr8DhQEcQJiKZQmaWcNtGqFHJkoSBXtYUiQPcTA+5rzfLIw6My9aO8ffPiTnVEwp7Xx71pJUQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721441754; c=relaxed/simple;
	bh=R/OfpB3aeaC3op3JSryilwKkLfCgaNjqbVI9Ro2iF9M=;
	h=To:Subject:From:Message-Id:Date; b=j3Dx8Yr3lB0GaPpVqekeCQCiae7Qljbqa8xwZ59j8AH0LQZb5hN45bannLiPQZ+Dr7kRbkbaqH1xLiUhOipw0OMIm+fsrOYyoRa/QO37THYzrNxo+rjIiV0iY42UZ9QzQKC3/0IE2uFLikKJzKZLC/sbtc6RQGKLtlvDweCeHYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhDCF8K4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhDCF8K4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1650C32782
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721441753;
	bh=R/OfpB3aeaC3op3JSryilwKkLfCgaNjqbVI9Ro2iF9M=;
	h=To:Subject:From:Date:From;
	b=RhDCF8K4d5hCIHkEisU3Ac206qXQw/zkjbCbogqsuk7oJjb6sJvmAQbZcio6CfZ2/
	 wC+b8s/OZ+NwrRQ/GaLAEJhNsvnUEKkvNQzOt0jtFPmBtjTRVR25nR9TnyEv+HeV8z
	 xuE4J9hDC9xUpnbts3XUU6FkBGffZZVdDxuyJkoJ2dQZfeZSiIy1l8NdcqO4STsFrV
	 g8l+S746Eb3FCZr8ckbC5JFoCwsZwlfaisXraHCuq7+6yyFQV5wyrfT+3sQfDaOZaj
	 PturXw3KPvrpLAX1W3779zn5bAXKxVAjcA85M4iwtcCsDtrH9f4lUQBmDgtuLFq88X
	 pcKbXBOGI8XxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B14C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172144175370.11422.13840053642065585306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5352638bd81a4293c0f52f9a55136fd82da6244ebc916ee83ce68c23260c84
Date: Sat, 20 Jul 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721441753
