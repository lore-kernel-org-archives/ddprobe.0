Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3923A7F57
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771952093; cv=none; b=UmOWoWIiPRSQeNwXm24xw0uCGp9Ti0Al581l3YyK6uYc5Fob1FPUpKvSM9Bd3SotzwaY1jP+zGSaExUD1ESe62xM0iuIstmeujy8uENPSCna11jlFLVaGg7qimp82FWrRwT4LRhjhrn0J0LA+63Erj2r7XPVSazgBG4Fni4mqFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771952093; c=relaxed/simple;
	bh=zMVYDuT2VD2jpXXX0yq5bANSHa1hHLU0eYXr8Kh0Gcg=;
	h=To:Subject:From:Message-Id:Date; b=gEFH8bLdanYAomRjEX9cFG6dSvmdSZex/oBQOOc4Dzpd6Frg3T5LBZrrJAS9YJ2/EmM4cnFJortoJXc10FHgg3lObDIEuphfY1wq4Ko9KaZBJTS0wOrCUY/yHcgQXVBNfQt9qx6VSM6C2GOnt5KMw5wXfq4g2bfCA/NKUVL93KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMbZ2e4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMbZ2e4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51BFC19423
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771952093;
	bh=zMVYDuT2VD2jpXXX0yq5bANSHa1hHLU0eYXr8Kh0Gcg=;
	h=To:Subject:From:Date:From;
	b=fMbZ2e4LCTsIKiuirzICxQE2kxSBi33SzdifT+BcggYX4L9i37muxytCSrQh3mpBd
	 s8bOKsJZ1yiTstkvitAk2oXgI2QF9yCDJ4AhAhlEpIpi1oTiNeEZ9ZYHP30nrwyNVp
	 uxfogshUM2KzRtFMTih2xBWpGAh2PrKIuTWq4T1hh/YNHOuRod8QL8Y5UDqRpYbysN
	 3urTt8P9bLaf5V4f0nHuqmfPqzVkY0pe2QYmHLHQBkqMO27g7z5PYkmtRRtZ4ucd7H
	 yP9LroAIqLIvnvUgv3I+OdNbJpmmywCSiD38/3WLu/adgl8q8ZMkh+QfPZuz7OfZ9Q
	 dUFReqwAMAnrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911C9EF5862
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195209358.24703.12274148960867558806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 017df99c3ff11be370cfaa7c01a39673f9612bb9cc10776147102c37aa651eca
Date: Tue, 24 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771952093
