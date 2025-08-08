Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250FFDDAD
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754624394; cv=none; b=l0SBuNOaYwYg9aWWaWAlDwcZYgGdIADBqNJ0F/WMf/hgSUqjNMV95BtdhV/cE95WakMSGN4lZVGSu8mCV9sTGUfwmA4bqpPxpnbrAt7WRJ6PZpWr6J2olYIEG8Q6Qmhr4Dha4L0mcovJ7XUGnhZp7DLbgYCRQyV9ZdVSZzWfds0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754624394; c=relaxed/simple;
	bh=g3V85Vlf8Nw95ZLUQkw67zFcgJrNB+YLNzxzLMxo8Eg=;
	h=To:Subject:From:Message-Id:Date; b=A+sND6ORD1Gr/vqJ1Y0lQCh+D+8F0CDyn3A9qu6T/lJhvvO8ffcxq0m0bDngaP7nr0zEI2bWiuYV+JLqssAgHat8xeHrK3LsLk5YupshL5J13NvIn0OA0G1Yt5YwMl0+C8udeILbnutEMPgR6s1bEHV6DJHMK64hoMji+l8CV3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1O38PAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1O38PAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0395C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754624393;
	bh=g3V85Vlf8Nw95ZLUQkw67zFcgJrNB+YLNzxzLMxo8Eg=;
	h=To:Subject:From:Date:From;
	b=n1O38PAmJKFsgty7U+hgW/YmIdhmMe1Pi4zLhGWJfEJzodPwiKnpJ+EGvDXxNfQtG
	 voNlADHFAlCz9rNs3puUyuYG0912Fj+RPRffKExTa4VU8YUi+h0zPA9f5BwvnmkutS
	 zxus5rarOJssrpxycuNdsEj3NcAqidtJPKtqfIHlpZtIqeo0a7dw6uepvNMPV0Gr5N
	 C4T5KzWsIko7S1KRdSOa4qz+7a2Z8BIMrosU5pK96K+TtWHWseMJHPUcEybUpoiSru
	 KjKTVo0mo7N+xayQI6tcslzIa+E26vFKLEGG59k6u3akNmZhGfR0IawLVZh+C0pAq1
	 oK0pwL8Hjx1Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9140AC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462439357.9229.16102875374270909774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948ecdb5242cc313dbf2658d1c0022641f03374b4a9aa96e19e3613454fd78ea
Date: Fri, 08 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754624393
