Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFC23AD500
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776709054; cv=none; b=oha8rrLdIlA/p8kqX9aEjmclnwutehb1/41pW2RwkOALNYpaN4SObaupBXXBAUUpqqbF80YJaTeqFmsJJhvYLKuUzV71xI2eVUwbMiKnJyfHXpR6F9WTihqiHpSg7ibID/syBb8UDMwA7cf2lX/n1r08ymlhMQE0LVQw3LHglPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776709054; c=relaxed/simple;
	bh=60RlTkoTJyb4hxOxgTm2mKtQK2U/cQUrPu4bhMfAd9Y=;
	h=To:Subject:From:Message-Id:Date; b=km1xoVzbqt34IpFIcC+Lovp46UuY86s2NUmG7U3FN+5TTvrk9kfJUPB/pfxojKiGBswssWWGPJ12s6OuMXK9Ju68JvUHc0o7/uGRvziqXJmFkvUAxp8ugYybL5aNIZunuJvARJO7xhHoSGZy/2XIMlTwyHFel//1VJzpl24UYw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUu8c9rK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUu8c9rK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A55C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776709053;
	bh=60RlTkoTJyb4hxOxgTm2mKtQK2U/cQUrPu4bhMfAd9Y=;
	h=To:Subject:From:Date:From;
	b=lUu8c9rKkhEPAZKpAzdK4RdpW3V2XjHxWjCGYU3C7VR+v6X2J3i629pS+mRTLV67X
	 v/UGdu7nUMVpMnd6vUo9A77v9cVa/YRhKC/vfqTou16l9mzPJgTWhXPBvQVsII87j4
	 25tr/X9xqvGRYe7V0sVjGlDwQxoXwl2kB0dAc8CsJohbb/Q3Tp+S2cjxbxCoumn8Wv
	 JRK1v3UUJlV+hqXntTFPkRP2gRKTmSEpWS8CJjFQs2tIUn2r7vqMBKx0yz9SpdRcwW
	 6XQaVI8H5DPBdJhuOXoil4L0QE4Jp9bKhRELrxZLumPmcDJhTAyCEA/BqNmfh+exZM
	 mxzhBl1C3OkeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7E1F5A8A6
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670905368.9702.17494184766912801554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 914f6dd4029956d8a7b5cccf494556a6a8057b0cd6637a143d567732f040f4f5
Date: Mon, 20 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776709053
