Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1100528CF41
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757462394; cv=none; b=SYMJf0UYImktM04ESveYbMS7VpBQCCmlVsUKqdrETGpH6hxbj5dWHBsCimTs6sDfTU7ksD6cYeBa0FuX/BpVRx5XfxZj+oThz6naut+j+KAed3uSX3PvgncSrHx+9eBkHTvFs1WQ77R3JuetSkr6uszCQEMaEpDUjY5qzyIKbpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757462394; c=relaxed/simple;
	bh=0p8xEvn9m0v1bKL/n4eLPmNGllF02ClV3d1ftQsbovc=;
	h=To:Subject:From:Message-Id:Date; b=fzEuBSshK7xfOLNHXJqW9zmxTlw99c+crkkN1iFk7dR1LS3CABJAuMRqK5FMzZBlTxh32FbBqpK8meP0mEzsHYhJnFX+yv6cXNhoypueLJjw7B0TLztWITGbEVJuaU1GKXkWy20RYQa/McYGq7IKjFHWnaZs+2WDFJhXrCrQNGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9X4zDaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9X4zDaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71BEC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757462393;
	bh=0p8xEvn9m0v1bKL/n4eLPmNGllF02ClV3d1ftQsbovc=;
	h=To:Subject:From:Date:From;
	b=R9X4zDaQvRvmPTJGCJLz7uPnaDbeKdoZ6QUSQQjXugyQTo7fdiN3Sx6Cnu4vlpSQF
	 eRF2iSVtS1zRCm6JvOOByiCHBImLroVXYyp7p6+FTHxoX+WPfaPrIM8/5995Em4L7G
	 2O28jnLY/MffpagWAi+TI7OmSsTM/QLndAbENYsD9ZHII2lI+QnPK21h7jV5oa8Pns
	 OSUQ92kAx8WREjjgIXajdvBlXZ1E5Or0ujZJLtjEDycKE9s7viFgnmna0+z8vOAXRi
	 7HePLCCt7GO+sD3qAFyVZ3B46efVMggM2eRas8qYlOMIjvHUU4TA2zPrS9tpvniJIx
	 LNduKeE2USLOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DF2CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746239357.13290.8738996261736655084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7859447f8ac664a0af319158d0cdf53c23cb09ff7ff91168573fdabaa78e02a
Date: Tue, 09 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757462393
