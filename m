Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B63C101E6
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745061594; cv=none; b=O8zi1FerRaZX7suHr+qLFpghMULLLzZE/2+6Fy3rKiHiBK5hzuYkR8mhVTvIaUiUnRjoror6BNQA4lrDxO9QAhiik9DJec4J2o44+gQP3K5IAUZJMOUejADJ5NJNiM3CKpMQdCkfwDEKY5RPEkkEdgFDI50OAzPrfg+q3t1iitk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745061594; c=relaxed/simple;
	bh=Al/n/lc0G0dEXmCT6RmCEUu8e6Lpcje7KoTgejjGTWc=;
	h=To:Subject:From:Message-Id:Date; b=buAu73/MxQoqVLlrc3QKCfEv1LACN+Tu+FxD2exxPqbntRQ9W+Ca6Kmm3gq2qvemusC/XNoBy38Chj7dJl0AEgTHlqAzvpCXM28vZRnSAedrOt1K30MA7XzTAlemYxSew+0AXMTl9CSN1veJPNYk3myOWUD63RrZmyKOnzj8ETw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4CYgcss; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4CYgcss"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD229C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745061593;
	bh=Al/n/lc0G0dEXmCT6RmCEUu8e6Lpcje7KoTgejjGTWc=;
	h=To:Subject:From:Date:From;
	b=A4CYgcssXmddCDBBGKUTqqj2/fJVDNL7NsnOD7ZpoIjfnWhIqT2wgc0elfkru0E9B
	 nWctGQFL51OxhIUrKI/e0WCzb0o90fxJDYd2iMeaX02EuJ24Ak8alUXPFSLgszNIAB
	 FAWVqU35N+G7C5eS2md5/ai3PXRE9EwOLhMnVR2kUJmjcTdIyLP0mF1mTewk0KYcKw
	 nQgwo47X0BFqHrzhQJWpuAiZF9jwucagT/pIhauriNERiXtANI8gB2QtzEhr6sqtr0
	 Ksv4Uo86DQjGrmsNZYEF0UPxjMhjXwUXtcgaoSUCk4fq3UWwmpKk+Y00+S2K2+WUiC
	 6ZFRA2dEuxEPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF5CC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506159362.18420.4800980538938984031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc2670725d5ccc08695b5dd35e41d77460803603951770f7dd95516f35fa8eb
Date: Sat, 19 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745061593
