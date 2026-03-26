Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F333C39EF2E
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774554894; cv=none; b=f80aRxajSptPavsi/OCQYfWAsf+k5j42qdoHVbQk0Z0foM0jDx/GzXQ+DW3pqqabXAH4YBmTqL8RIkR5ZuJaDOIcWIExmZUvGLmaAJJWjTIfHTAIrDqN2LtEoTab0Fmounya/5KFYHJxn9TX8PZ1u20lcIKTXHMxIeU2Gswf9Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774554894; c=relaxed/simple;
	bh=aRz5ILxZ61HBv+3j2bft/3FP7HXMonpNsSVTqAHXI3k=;
	h=To:Subject:From:Message-Id:Date; b=CX6UUZL4n+oWYNQvhhqOqw9a4PKsC/iJuPkqLUGuaW25kEA8WnxGek4zSLGtC90nGVF4UGdhhEHELpy2XaEbMiK0RJDGK1UQul2bbiSWwC5Drp9t9SqdArNhRxOBAG+jg5VF+lPdO5Sz/B9592jpyixcp0n/fcEkATU+Vevh2mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwrNqXAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwrNqXAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9C4C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774554893;
	bh=aRz5ILxZ61HBv+3j2bft/3FP7HXMonpNsSVTqAHXI3k=;
	h=To:Subject:From:Date:From;
	b=uwrNqXAKckSvqpmYFqHNQEy9MJwG2c+r/VHJQaktCgr5XtgG3OMmYDQblPpCHIcaL
	 Zy2rAW4nsAg87/bo6NunUdauUWOPDJvVv7eQJGbBuS78BgsEXeXzz3m8FLU8PyzLHG
	 lLiwD+nrJER7dlSvrwEoPMU6TueU+A9F4zT4v7w57U+oAsCWaN0JPqe/HxgWHbzyqc
	 zBl8s3jihjhqC+6yuFqNiDfbat8dhhAAVxLleVxakRh+GsQQLav/Rv8CLfjPfVz2tm
	 yiVAHrYi2TQjL1QQ1NaA+m7q6SAVSZSXOjo+K1zWKs3AZPC3WZkXQKpqKe6wfYvtqN
	 XPr4MSuCMLnVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B0310AB810
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177455489358.31116.288626743302350970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29fa6dabe5aa81ca2d7e966e471b0dd648975231d1c312d458dc60a49a10aed
Date: Thu, 26 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774554893
