Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B32399015
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776826655; cv=none; b=Omghiz3LD7dBp61sILVvEL18G+FLmiSj7rnkKBZ5NGDLdHu1s98uzbLRkAk/TEZCgNkjh+TnYoTS9AbJo2L4XjGXW+roZvmjLhlVoMepjIEhMOHS+dsgjsBfDomjPlhoJdoQtn7PJbzUq3daCfztlOQASt1SGcUv+CYwkyAWq+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776826655; c=relaxed/simple;
	bh=NJPh1/lvS2JxEh8PiUlrqug7SoWbFdHOy6ukx4BYSc0=;
	h=To:Subject:From:Message-Id:Date; b=bjORy4MOEzdA9c7TAwl8y0Ud4v5N4QRyhnT7RcE7sYy9DYuaJGQUxsHjFMKc0PwzPyihCHRGOYb69ksMca+vNnIN0QBR/I9/7EAK4udAypw/pdYuelEE3GCPHuLqhyuSi0BbX+NNmCw5432Q1ZSG2QUOanVvoxeMFP9czRPMD0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aV2Ks58c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aV2Ks58c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD746C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776826653;
	bh=NJPh1/lvS2JxEh8PiUlrqug7SoWbFdHOy6ukx4BYSc0=;
	h=To:Subject:From:Date:From;
	b=aV2Ks58c6J1ev6gRPuCKSd1wZuM4yzesnFwjvmRwI9RekQD1y9O6EOFNqUQJP8+DR
	 q7b8s0Z81TwYlw23NiPgaa0OM5+IPlS3u9gym0BONHnjWdhOrLFnHqN+tuZ++4i9hB
	 6/1qXm5eeM/H7BifcTX+QzCUxjTq8DI3StS0yGFMd1Y9nXsqEU8x/SnkIOOqUb3w7N
	 Jv8vJgLJrjG9zHI++cqC//ZY52wsY/Rnq+1pFgbUeh299O0Aunp6wbx5i1Q4WkJx5T
	 uYLCqZML8rVYzcvBeqPlJdNZxocEoy9Jw/We5ZgQeq0Og83cad+6MV9aWx3HVMFn0J
	 xrI0cSnSOMSXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1E4F94CA2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682665368.8370.8482110380492274273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988601ee27804daf91f15a58dc2a09df2676ca8b3bee639c8ce5991771518b23
Date: Wed, 22 Apr 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776826653
