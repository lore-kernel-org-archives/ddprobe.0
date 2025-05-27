Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321E1139E
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748351994; cv=none; b=nI4fbK4U2RIloZ1CxouA22uE5+yCs5xEeAZiAgIWxO9mHrow6w7VNgxYh4l87VjDGxOvgmxX1/DgSUKpGNWxDsUyvC/5a8iMIRm2rDzsla2n4lDE0f/UsG+xYbKY4LbrTK23Dfuk6hvIMUjj8NCsa3bX7AHoqlOAKyoc+iRlpEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748351994; c=relaxed/simple;
	bh=Q9SAQx5J9FFtFzHPUeJVQxlHdfrXY7ff5jumGHFtX2E=;
	h=To:Subject:From:Message-Id:Date; b=ZSXM58Vxbon3+F2NRLlxFnKCraagEjS+XQL29j7liQoCHecXhv3M46VgA+iDqqOJbxORrhhvlJqOP9xVbGxoOpYgZOtns59yVe/rxHRYXBdC6//DIXB+ol/sy1f/0IPL/t2Jvrm/gk1q+aeKTE2wa396L0S6fV6tjC1UcPSEmwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfHVnLGu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfHVnLGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F830C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748351993;
	bh=Q9SAQx5J9FFtFzHPUeJVQxlHdfrXY7ff5jumGHFtX2E=;
	h=To:Subject:From:Date:From;
	b=FfHVnLGuRGLexYz90S6Yt6tQw++RxzVeE70e7eaJv/vCD2aymfdj4+8h4M4yg0+3f
	 xaUYyk/pdiczC6jcxWDxmfknAEqBkVJi29xgejfvJxMowb4NWWlyVvVBO/UUlBFiw1
	 B0DKxIDOtb98FUEySXtB5CIphd8f0zVfDLUVQW7eZhWUGRazvEThb6x1xhr0bVv8BH
	 FXQX8hkwFcWvsIO6lqySotyylldiqUg2MeF0W4M9qYjiXDtUpRF7SeizVS/g2imP4h
	 oZxCKKbwHXKaAhHIvpIK55ZFzwbaMfx4ua1d8qpIwPnBGGBtfsK7S9/JaVxmPt55+/
	 NoaNJHbjaHs7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA70C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835199357.14707.13677242347661955313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f0cdba822b7d9d80e6fa2bb394cc781c1c9ec485c4440ae8a5026cdc7e9392a
Date: Tue, 27 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748351993
