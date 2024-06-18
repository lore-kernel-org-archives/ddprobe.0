Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6036317BA4
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718686763; cv=none; b=lU8G5u26rDOsOxtES0ct1PlugiVOg4kC/AR3q7Y6TUcY7dV702vJG83JsOzPwd7npcRRG2m5h+oNQjgtuIyxN9G6ypQoJHF4DeGyhPfIgqO6n4etzsKEGXFwgUEThSNA5MY1ediedqrbwCTBjBJjmT3+N/sBElJBFFvLkwBV09s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718686763; c=relaxed/simple;
	bh=mBxEaH/5440uC1SukGmJPtzuVzwg9ydPavRqcYziKMg=;
	h=To:Subject:From:Message-Id:Date; b=gUBCUIZDhbJD4IFgKQ8lZen2xIiuJwd+G5SEvvFqP0HA+QBKlWf9U3UBGwe6dyPXEMb+UDUuIi8zV/Wy6wURrICoUtgL+05R3ZU3DLyVzTE+PCYzWKxDJd3hs4OC/2W6dGSS2sUCW4s9KrFPVa7r8N0LPU2aaCsaMqx6VvyxgDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBc557LH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBc557LH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD519C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718686762;
	bh=mBxEaH/5440uC1SukGmJPtzuVzwg9ydPavRqcYziKMg=;
	h=To:Subject:From:Date:From;
	b=hBc557LHJbSOo+7EF+3/1piZFsx9duxsO+xC7Um12QgN4I3ULjACmTAa1jPz1KqiJ
	 kku2+lCWGTLsGD+3uTsESmuFxciRXJgAtoa0XsQR0+7jEoBRTf+KKXjDI+vesmZZeH
	 Ejy3ZxOpm47f6x9oC81bqY/IaBnzHQwRM7uB7r7d9jZKrrWnZsfapiioYq/OrdrADT
	 /bVsAx0NjT+Ky5BJxpnzkiyvvay08r3FIewJ2TRjHOsgG4r94jvO74VhwR9IO923Tr
	 CwfpbxcnXAQ6l4RMeehI8HhWWFb6f9ATyjn1PnlC6hu0KSxWf39DmJvawWVxjln5xg
	 Z/y4WQXx9NPxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A93C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 04:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171868676280.6676.14841174272897438799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d786f270309c0975e8275720bfb01d174a258bc68dcb4c71b3d907b43a54b14
Date: Tue, 18 Jun 2024 04:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718686762
