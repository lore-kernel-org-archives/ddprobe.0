Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37279242D9B
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766118834; cv=none; b=JiCCSn918mn73RMNwMk+QT+Dgm5KuAFWVdgKvtV88hXqg4JA8KXuFPVOL/TJNkrXLZroz9jX/dB9BVIdCklDZwrc9f3BZ2Wf+SJDxhBvCMYcfPPvMg8aaSIn5cBc/sMyJHV4tKz4nhWKzPjfeGSeykPGtVR1FiJQbyl/oyq+0+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766118834; c=relaxed/simple;
	bh=hQPo+n5QT63q4g/FiJZXf51R0DfAPnzyn6/A8IHBBEQ=;
	h=To:Subject:From:Message-Id:Date; b=dTxh8rkPx0QhMzV/JD6ZY1pqfc4gIp28J9c2eMLKxxUH7M0dMXTAhyu8OWSF2Cu/1bZACY5UKZwZV5cuo79SRZ2cYpRKBDtVljN8JaevhZv9lLQWQpQOr2Tw2NxdkKufKErf+Xh8tzMHdODt2CiqJj0+NlpJY3fCG8qnD6Jjkmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUwip3Ip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUwip3Ip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3393C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766118833;
	bh=hQPo+n5QT63q4g/FiJZXf51R0DfAPnzyn6/A8IHBBEQ=;
	h=To:Subject:From:Date:From;
	b=SUwip3IpYW7Hol5sgT1/esbfEPRvxtzIDXXIemY7NyRKFUl1Obh5guSdz8LdGk5tr
	 IH0JTpKf/eDNQrAECTuqO31578bk33AAHuz1mnVu2kow1XAklz8gs0rXTuXVvBhANd
	 es+ftCKxe9UG9eTXakcE+CsKwGZhfkHBTel1i3ztxJ0GWMMqmYAYbm3wPgR96gLiX0
	 H+68Z6KXOSK72xK5671TvGaGQok5dPedEYEoAZyocA2SIKhyNMHfvEfZnzx4JU1Iu4
	 T3BLRSc/DJi8gJINeYnU4clnszaBku6LFqcYacFePgTH0/BIPJFmxTZ/+xx0k6zRPV
	 XCZMH6wEfpnCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A2CD7494F
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611883358.32532.14976485189950381987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74d557037914385ada2e8349be4ce68bc43be626d25026c5b02c43f76442781
Date: Fri, 19 Dec 2025 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766118833
