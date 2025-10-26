Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267E5212542
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761452995; cv=none; b=Yn+QLYqjqOKSUFuka6kb5uslWh3IQgds4YqqnCpVGw5cOS7d3Jgzsh1EUPTM83/UPLpVRFdsac68DGUKjfgCjZzAqqWS2AbbW9m3Qmh9nXlOYoOvmr3ENYD90CR8JILU+E0rEobXiHrUQPfHMeClrKIJL8J83z2laVe8ofdyY1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761452995; c=relaxed/simple;
	bh=S+5amqzm0pkal5dAzz73NCUGuoQKEantNEjhGDuH3nw=;
	h=To:Subject:From:Message-Id:Date; b=CqhopfEz5XFzbWFn+R7+Nhbjl2oQNbB37cVkQaXUStugKdJwXxBjvsR5nKSyVJdiotEFjrX3eBSmmz0+7QsbDlSvkbwnSg5S7jy63akF9PPrYAZY03bmenW5AjgjWfO4NqXeDB0uiIzgIiFL0m1nRiUzTZfgDiovDrWU+uS3GPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGjkHog8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGjkHog8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAAFC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761452993;
	bh=S+5amqzm0pkal5dAzz73NCUGuoQKEantNEjhGDuH3nw=;
	h=To:Subject:From:Date:From;
	b=UGjkHog8knoxr5kZnO5lHoyDwRId6njJd+WKUFqlRqhBE/h5K8ieyadNX9rRHu5kf
	 2boaSitjcAMcYoEyN7+0aGbqwQtGie8Z1aFzvYoin4n3Os8Ni0K1QhOVuIkYPb1zED
	 Tm8V1yEwqFV0FbGxnSx8WAQzOJsiWu/Y6ajeviDUG8cBvpcwuFp/xUCPQOxrbYhTQQ
	 4stPWMCFLP4mwVsUpbWWyRmKdOAwgMskc7VufY2/iq71xaxSGO78/qhZJiKg3pLWoW
	 pp5vng2BruAkHsOEELfTH17Km3Ege8zVRAId0egtmjsP6VQObSJnYEAzB3V0erz+Tf
	 W+bqgVoSKnI/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8C4CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176145299357.7247.4460745158454550820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11a85a5adbe34d9d131c3e358bc5a2d5b449bfe0004ada234c2b8c724e631ef6
Date: Sun, 26 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761452993
