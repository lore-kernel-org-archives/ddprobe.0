Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3D71CD1E4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779429754; cv=none; b=sJvJfFbFOKvE9TpBvuEWz4KpjXu+9AqDIu0IHA+oyD4HZRGLCrO82ncnIupOoLn7wI7LX8t+PINY6exqbwGIaXsZXOp7ODg5qXhIE8px2dfZ2kTRz0Z927HciDBFC/8AwlPF81yx5yBBo7qnpdmZxYYPULxG5adCXrVQ9lBz0Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779429754; c=relaxed/simple;
	bh=Z5vBJO5hCp7oEIgrpnw6PNIr9GreJEeSXaSgkjMvaeY=;
	h=To:Subject:From:Message-Id:Date; b=WFxTiPL0Z1d5D69tzE9S6lywlPpezgBEMXrIiVQw7+wEtpWf2+n2UPlabMyh5e5hLUUHAKK2FOn4reZ6mEMe1ByDGfGikqpYL3E76WORQTxiPTP+0xlpsOfoQdDCxdOZlqZ18HhKCWDHEopVu4NlJUk2wsFLpIeySK6NEURL9Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDEBz7kr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDEBz7kr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8283C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779429753;
	bh=Z5vBJO5hCp7oEIgrpnw6PNIr9GreJEeSXaSgkjMvaeY=;
	h=To:Subject:From:Date:From;
	b=BDEBz7krHeJscIRiobNrwAgZM3/12/3aDK+kj83QgvDJlLYXqTe3CCI5mRJPNVXf3
	 3PE+d6U/NI+aqkTz27p4xjQnt0FgNLn+xCL3ARyWF1BZPGxSDKECcPZZaeBmJdc1P3
	 LDeL0vVPu74LStOfvIjpUKB8I6hQvtXtKSnd3GMySWwzBRF5PHabvR+OD4KwUPjinl
	 ZgPdbBarKwsZyWbtw7boVo7QEvqZ2V2JSlyofaSbbytYlr2WLGp2nd11M72Rfk01Qa
	 ZVyDda0n3DFCO0c019lPMQJOW37Y6GwJCQXWciCr42BJk7nlaB/V7jkvLxN8eWnBj9
	 BnZfWh2WdRtag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2AACD4F5B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 06:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177942975368.16231.17882118348849977192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65feafa543f01054def8b81887ddf1461ba41b75b89e94494b1ca1dff8d1e0d8
Date: Fri, 22 May 2026 06:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779429753
