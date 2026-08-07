Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B683F8232
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786137634; cv=none; b=Ws45RuTBfmPr39nDLpxl/gM4kM0npFH78/Ovl2ESNK6LWi4VE0RKMewXfk9kkc4O6ml/T/a/2ceJY2fuH7SCSn0vENMsVXzoEc9Eo6k8/C9NMhBkGxTILxNFo511lcwLZQ+HQFHgmakTUgjppsm+7+43ipeHy7hIPIZfJVOnnhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786137634; c=relaxed/simple;
	bh=rDDnUl4ElyYv+rEy7u0roaX6H/1YSaWbgpXCHlCLwYQ=;
	h=To:Subject:From:Message-Id:Date; b=L3XgzeTon0JfiFlfQ6X4aMX0Ok5NoV4nDD/OpyB5UPmUW2+SMJizghyFGrefFkbgxlR071YnXieevQDSaP5J6EKSxLRfCsoTKNZV+GgRgAHp6OUbtNSQYw1uCkL4KDCRF4YX4II9d7pDVEZ6qxUeYKRGc/S4rtG9OqubJbFauKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWQOhjPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWQOhjPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57B3C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786137633;
	bh=rDDnUl4ElyYv+rEy7u0roaX6H/1YSaWbgpXCHlCLwYQ=;
	h=To:Subject:From:Date:From;
	b=gWQOhjPXQ5WzW26UxdLLDXszbXrNJhcoeLxKXOMJyUsrFZY+VdMuCR4tH70x2IzzZ
	 7Z/L/cuPGnzcWiXiC0FPfdAneqUhNkuZUoolGd/TjHAFo83VwECzmMUCnFkIU6/4MC
	 3JALdLL2xVqHWlQN5meCuZxjfaRlmuA6FJu7F2RZPjka73uJK5xsuMrVExTbUJTzAU
	 keZRsD4wAGo3vSHdDPP6+g6v/n32NBe68aYDmfLn8Z6kWufDW+u0yg4MpqP4sU3xse
	 TBCu69DdeocDVr4cxXekunoDGhWbA7yyxHZi/Y5wakrkSr0P3Zu081B/dfuh3CJZ6h
	 ruVOHZJydTVfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B433FC5ACAB
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613763372.3642.3576146646281336039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c06403c0ba827ca54d98c54fed506fd0378eefab498a1d1c00d09bc0597480d7
Date: Fri, 07 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786137633
