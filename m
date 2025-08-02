Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270401FB3
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754162394; cv=none; b=rf9pOe4bxHdrAhmo3FpsjjQdGiJtp5gk9G1qK0uxryEu9IPmSRIkfk3fNUqBbfyLxB92sKWrwefGSCsk4UXboQKAS1RNXrYgi+rGptu4Hzog0YWhdlInP9Hf+J1vkma4LlWo/6/Mbb25Y8dC8QeuNUDYYcxbio32reuGJfMmoiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754162394; c=relaxed/simple;
	bh=qR4J70T5b17R0SqJ3aI9+ktKcrd4smbOSu5TBMH4z5Q=;
	h=To:Subject:From:Message-Id:Date; b=ROWn/qJ2QVoSvxsnMsjW2A6szHCN65uX46grIKYGzaAy1/6iXtfIh2wsF4gGkEddRMm9BjMVSUYC+YHmePNyX8S7K+GXBd5byB+BUEz3LHvoNj9fJSomQ3gy7cFIKyV+7u0pQJUoZlJBkZFBe70Z//gvKaALL7zsk0l+92lFR6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQol+W5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQol+W5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA44CC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754162393;
	bh=qR4J70T5b17R0SqJ3aI9+ktKcrd4smbOSu5TBMH4z5Q=;
	h=To:Subject:From:Date:From;
	b=RQol+W5B3EQTnbnYLKpMmxrbh5Z8t08RtjhokO8Huvl841HkuQ2N5jXG3AUtGq6nZ
	 v8Ey97soAsos8M0OrJSd9Xq9O1R4sYkTkJj6IcxJuge2c6kSh935zqHAVpRg99pwHZ
	 azD+J1OY54dx+aD4gSSPFAc6xjGlqhinrmx4mW0eq6cZELH1eFEH1LW9SBCcU2h/KA
	 W6L8Kfldnj8TRXwh5E7HeNyrXuT0bNGmUWnnx1w8r6QotBGgMdqVoBTLnkqdqx7SKy
	 +lMQw+ZMio0ux6uGHHfxrikPEjoGqegIsBKeYyStQ603OWFiEHArVl+JqEmRg+RPrc
	 RyzJptCzyr9Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943DEC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416239357.16216.14786698859756135812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1290588a840ac70b2694614d6715824fabd97e0c9bae529787e01dff3fb5e7b
Date: Sat, 02 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754162393
