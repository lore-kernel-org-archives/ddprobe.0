Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6211E9B38
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740043733; cv=none; b=gVogXVj0sv0O47FoCj77QQph8vPeU0pSTb5bF+thJKTjq00nPNh3ooqWXqa8gAdX/D8qbLMYsW7/icfwmKIpnqKNQ2U5vt+nTrk4fGHQUZqrxweZcPMo+g1O+JruEmxnx876d3SepSnGunxTuvC+SGeTzhB4jP+0l8XkI5YWBAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740043733; c=relaxed/simple;
	bh=nv5rdujvCXJp2c+C9LVL6e8bz2AHIoUxnJGtNZC00UY=;
	h=To:Subject:From:Message-Id:Date; b=MgU/6X+KoozHgKpCYwhKbxIqzebvR7gjpnZVp49Fc8jXFUj832jTghFrySSVPRz2E6si8Et8kQyWXD0z9UIWUV9fI4bzmk0QlifVQsTQ78OT4i810RhvFmtTztlrszd0hSI3MXtYiaVLvsfZNi7hekyR/3Ds1KNdtBnxsrbUql4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAa+bM0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAa+bM0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19F1C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740043733;
	bh=nv5rdujvCXJp2c+C9LVL6e8bz2AHIoUxnJGtNZC00UY=;
	h=To:Subject:From:Date:From;
	b=TAa+bM0RMGnZUd48DBAN9z3xIpXQg0e0vnrR0HMKgrBGi4aYC/Jqa+od/3fST5gGy
	 WoDvIzciEehbXU81r6+JsL4mgWebIAk2jnPP5x6s1c/Yf4V5Ac/bD5ysGc6Q8TEUes
	 v4Xh2RLS5A00Rq3em39GAMq2mD/rb+D0WSuv4uu2PbYi8VpNvFnkrFwSZL8t4jzN0P
	 Ic2Puy3BB4PFKo665SNRBVmkCAQT0oLIhRa7MbRHo6p+ClvQ5U23NiLao9zwdCb4/7
	 VRAr4Qjp7we2YHj3n65x9fD6wby6n+4yq1AcWFn/pYq4HQEVC3AuiyneKyJas23FJw
	 MUZZruJVH8paw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C4BC021B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174004373357.32338.16479763489397920292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fed44b852b6450d922666b43bf37bb767987c2172f545e9a958b609317558e48
Date: Thu, 20 Feb 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740043733
