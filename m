Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1427930EF64
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776312454; cv=none; b=vAAtA1+BliFtI1vdONr+K7KPAXrOQ1qJol2xVrSsywEms6lG5px4Kp2zzx+BYfIiQ5oYqC69EfnNeLzCj+1d3bFc1ZVP2kbWf9MbnqyHPpuQzpIxHYEVPvZa4WvkA30o9KIappZajVpk+va4lHSjyci1oVhWp6dWE13oKO2k/bA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776312454; c=relaxed/simple;
	bh=iW5SkyWdDvB3udVj4zPAipwDgRon5D1WXNtrDsG1xAA=;
	h=To:Subject:From:Message-Id:Date; b=jmUkulinQq++wif9XYZkAEavbecSCnlccG0RUVr3Aq6OJrJeNxcju8TKSXf0xAzw+LTCrjfz1rNbAodfDpwIs4OYd9OjdYhmbOjb2s5Ym9LwKoIPpaQ/hmI6D87z/LATS8IMJL4Nuq7+zRyQBnPEAT+uDgbU2h3UqCi99X43Iu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLHJSXy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLHJSXy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED9DC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776312453;
	bh=iW5SkyWdDvB3udVj4zPAipwDgRon5D1WXNtrDsG1xAA=;
	h=To:Subject:From:Date:From;
	b=fLHJSXy9EfdxD7qFNIuVPWFRldYhxSzaXKPdULql+urB97k8cFPdpzMVcc7az7N3G
	 ApWVvDbrL88wsi0ZksivyEDIrk+6WgyKWDEZJIcKD141puo/Cp93+DyMHdn7j/PLhq
	 mIFAuRbOvKOaDsU9a9R1EmhZRwqxCPSagp9+FDYBeWp4L9SQp/ZmWlTHzoNdTBsZsU
	 Ydbs0y3uSdagtZDTy4TSuaEXIgqbKHNcgCK6o0lIL9BGKQPFV98q2bTH//LwrTqdhA
	 I43mbcZ/YsRbPPeT97WMe9TPNyaB0ki9jC2F97nHA1KiNUyecwePpcFCXo94yAP6CM
	 LIWKA9KoMIpBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE93FF433DF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631245370.3941.13684556956883932171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c2773639f4aeb21702d4dd7248ffac31789e1e5c6b0b85488f61dd8354bb60
Date: Thu, 16 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776312453
