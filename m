Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A44113AA2A
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720989023; cv=none; b=tBDeXNZGkGXOD+N3lsfZDJKkYDAImRIVAjO1NlB94EpmNr5uhNjV8/BkKj4+h0/lKIA2cMt76aq8oLZ/Z6Qpo4cmAu88X6a0W1/R6Gmh8rAvlJZZuka9ivuuoz9vb690tKv8TqIpEzY89kEyZObBFVKngbzcZ2uXTjU3xHhFozU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720989023; c=relaxed/simple;
	bh=4v0bC3euoS7afwgPzQCtTaVGk4skH2TKNlGX4w0RF38=;
	h=To:Subject:From:Message-Id:Date; b=tLHHFictCRR3X8Uws+H+9VbFv/UWw+GlkjtIvYihx91xgBv1okHGAo+zr8juqbYpzMpV1TrOc7mo+G60gPHV9xXFX/Mi0kMCWkiATaiF5C0yqnmvPlJ3+OIAdKF4+Q6xUlJU48jJC60CaO99rH6CuXFRZ3KJVWVLJ+wjXHrRBy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWBV5cUk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWBV5cUk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCB2C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720989022;
	bh=4v0bC3euoS7afwgPzQCtTaVGk4skH2TKNlGX4w0RF38=;
	h=To:Subject:From:Date:From;
	b=SWBV5cUkDX9hFhBijQQqQarVVLxTGaNSjpwdtutsHyLvVrgx6XHhLx7j6qjD72e5I
	 Xnj+8vSd2Dj8TpkLKLncXY44CZuGF6V5BHfjE1P2+CxCRl+kO7qDmkoUTCobWpGkL1
	 AFX+CVIuqc+iCLiJzd79EaZix3bXD4pQ0FZu8rWro4py2s8Ohe3yEiOrpK4tPPgcuz
	 RlvcDDHIbTjX9JLV1SNVRnlxWyL4WOtFjc3iIoFDr91iOT3GAH8es82OcEB8AVMneF
	 SJkJ3aCg60k5lXpQ96WSp/zeI5gQbavQccwfYxVqugs1iLyKKDrPXzdC53JUodYhCh
	 Giclxevk2LGQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE71BC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 20:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172098902277.17202.10569876197817624787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62393f6e7c682973fc3ef387f6c968bda3b691ca24da2feb9c342d2776324bbb
Date: Sun, 14 Jul 2024 20:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720989022
