Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28CE2E1EF0
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756058993; cv=none; b=asuooonJeXJFXT8s3M1QSgK8oREAuyc7vGhruqFZmKsku1zVygZL8SHhYYGcsJlreagVL0zns3FB4xpaQyvvDarltgsMQxgMRoJg4X0UZS1RjF/+7sP44TjOOwANQJ9tQM5Yd6gb2/sIWryvccLqHiTLPWraG9XiSvYup6AEjpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756058993; c=relaxed/simple;
	bh=/v68WOlg5X/XvJ/2KS3nvOYPVqOT5cS6Xf9VcmV0uVA=;
	h=To:Subject:From:Message-Id:Date; b=n4uABIvmOidtFnb5/qnXaFwNKAJhvp1TqTUgoX4+uj94hfKtoOftsQ1n2a3n5POyO/8M+0pt0AA75WFRdnBMAPcbMjYGxwDdmeMhOVyJoJJog4HheiV66+HlPIShNmB9Xx/oEyVrF/qFaXbj5TXuaqSnDhhx5R9xOu3IiiqOrhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxEzUvvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxEzUvvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B6AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756058993;
	bh=/v68WOlg5X/XvJ/2KS3nvOYPVqOT5cS6Xf9VcmV0uVA=;
	h=To:Subject:From:Date:From;
	b=HxEzUvvpSCgSIyyGrvXEAMs9mbpXWxLBJX77hykWWABszjxS7P7EdPxBuseddB/jr
	 uRlRPVcdD3BYD6GJHYyAy/xqZnfCxZlAvOGFlzVOYFFYquPIc/vWKMTRvWK/6JIMWr
	 sT+tL3wmUZ0y389JsSECEr4da9KrcX7eqr8dh+hIw3JCx+3Rhg4FznXdvPV5I4iitr
	 Ia0GfcmwNhoRsslZdFjAyRHSZ4zFk/xQo4RdyNcGsa1t4WjBJS275Gqv1Nakg6p2+b
	 2ejMlQB/udAEC1030hecCG3a6IQjUfwD1liEjOggSHEIM8YbFB12j4XiF71DIxzYxa
	 V87jQB1NFt9Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9308DCA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605899359.17356.4967478567994870489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f17d98da37f76736a473f29d7808f08860cc31c506297957891e0633dc815ab
Date: Sun, 24 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756058993
