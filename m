Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DD5DF59
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776523654; cv=none; b=KMF0WoOs4xNtvweDIgumRnEVTEg4vd11M82NzyXsVBQNrn9EFnHl78AA0ta1Swuks3LS4xXt9cX2OAcbNiECkT8ROCmAY4IrNXsPq+nHd/PwZAAU6W16/bMhwzL2/UKUbuMwAUS3otBblesHUN7Qd8j1CTBvzJThQtQk4tVWx/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776523654; c=relaxed/simple;
	bh=Ea3LYd7GgEXkARAwCpdt1m0Sr0gSCXuUNIitMb6C7qE=;
	h=To:Subject:From:Message-Id:Date; b=cE4Csv+/v+SXBM+vgN9VJeXcvMY45AZFiIzq9OGyvHW22BdAJx9khP7SyAUtGq1xDc5vKy8bPtnkCQb0mVwjNWciClr0pDF8Qdk0kjMllC59jDthbDI7y8cGLZGv9rYK4ll7m6F3NLSWMkY44XEUB/736bRDGGAd26fq2H03Ak4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XGQyt2Cd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XGQyt2Cd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF27C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776523653;
	bh=Ea3LYd7GgEXkARAwCpdt1m0Sr0gSCXuUNIitMb6C7qE=;
	h=To:Subject:From:Date:From;
	b=XGQyt2CdyCDT1Qq3DxhRsNZb3Yyhwz7XaqiEzW2ZDIBQY0DCSZ59O/xMtRnWqZsLq
	 aSjvglyot4YsCWOhovAn/iE4DZfJLjkLsURVQyHHdL5kstOodN1kbsXZ4vX7V2YhmB
	 e5fAyEMQu+gX2XUaNcBWScZWpd+k0dK3g8zLif4eMhTQZCWlwxUwf9r190zV+//JJZ
	 CgVwSal74CdWLSq0idpCv8Fv9KsU/b1NnJbAyV3yFkHEAWFvRaHV7yD4bFfiAuaQpf
	 vGPMso6T9oUeeBUUiswAgn3FhVCyyymVuQh68pL991vwcb5R+K+KQg1W6sSSR0BvLz
	 rXdoI/m9yck0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC151F99C82
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652365368.9886.14060404999512812334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b6827af2f621b3986883a5b3df241657a634f315633060a1e9052338136785
Date: Sat, 18 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776523653
