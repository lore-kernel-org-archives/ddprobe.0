Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19040126F3B
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773374694; cv=none; b=oe8wWFlABXkHxzW6ztOr0XC3S6lAquxMW4BZXZJHAnXdF387VC/RBVZfAcJ/eNZoxR2lOg0JBceP9oPZriw1xEFNojW4YgrjNUxL8uUmGCGb/G60l6imE39Q6Q6aNr0VXsK2XhOGLyIH9/ltYzafG8kr8grhXwDI+v1OYB0AFz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773374694; c=relaxed/simple;
	bh=HTsHrOS2CGWk5UBYmXsLyFp+wp5wYifs6EacLHT7Jl4=;
	h=To:Subject:From:Message-Id:Date; b=Od6/MeSUY5oFtTUMmjEuJnEJkUPb9ZFYYks7S9M226jSjSgL4KI9zY59rPrUYPWPfoEnzailjK2mpI/BrPIaWK1JED3pJUKuvgNsx+roKRsj7HZ1aCxHUD08j17ukCrce8rCFmIClilifzokZRu86Yvc4QyBhfezM8DEK1YUdsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFYKObKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFYKObKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA67C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773374693;
	bh=HTsHrOS2CGWk5UBYmXsLyFp+wp5wYifs6EacLHT7Jl4=;
	h=To:Subject:From:Date:From;
	b=RFYKObKMWmBWdW/Ddb64+X0GFezGbwMxo0aGw4pjen53XlKOnpTTxjLEUvjntPY8x
	 niRB46t4SWtJ6nUCxa/T9f2dmu/eo9mtQPM7neTJIiIUGZoXDwOK9k2beum2yWr5Dj
	 PLDg4nc6Proj+t3a8Upx1IUJG/A/n8g1fs6cPpn30XM34FpcMWH3wsfXE4o2AYouAT
	 H4NDNBfVyVVTTsd/W4+zfjL6n1Pr+Z7l9fQ+NGV6PJBbHlwA+1ISJTG1GWqZBUBtOu
	 Ntbmni/SeYPtTLBEyUd89wMbLJ4NwcODcU9V03lG0iqUfUMvje/8Bn7yi6/qc+rtA+
	 Hskx7YRcfpsLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925D4106FD72
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337469358.3796.10403532096668892008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea19ee49d3c8a0843ea3198c95d4e4c7b5b67859879e653e397733420d8e2fa0
Date: Fri, 13 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773374693
