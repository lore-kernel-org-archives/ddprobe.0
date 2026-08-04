Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483961E1DF0
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785819034; cv=none; b=HuC/HKUwadeWQD9gt0Y8rVhlUof3/pddySfzgmEJ2xulwgcwFrXdMtj58aJcH9WmvBGfzqFvOMQNBAqLdrNIJdCfddwe6LfIwW63XO+LyWUG1jXJwRpeQ2fYJC2vvrNW4KkrhMfbsqMMTclwy55YzLqYWbZYc4wvTOFH7KsQdKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785819034; c=relaxed/simple;
	bh=ot8/cptp5d+w/zdupMy3Np+bNufLTA4UdYN8RrxSLOo=;
	h=To:Subject:From:Message-Id:Date; b=f9Vuy5eDPy7UdRogzMRxPV5MH0GDiygq2YJW3iYyFAWAxCSiQvSCANxhUAXF4hvEhoeHjgJgKG21Zk0v5/rDAYVHLGQLTqovI6Y583LwQIBcElH9w4J2HvAnVU1rSQOkpVgSVnfoMcfXl4K7TdtBytutyo4IIjgkLXaHMDT+a3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERpe5jWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERpe5jWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F39C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785819033;
	bh=ot8/cptp5d+w/zdupMy3Np+bNufLTA4UdYN8RrxSLOo=;
	h=To:Subject:From:Date:From;
	b=ERpe5jWTP2qOAfOkIGozncpxjfUOrZJ9FzWWCC5eMruKcX8iz0i59OmFTHpaRrRzz
	 WVlCuQG9HsK6DlVnFNdgpmkt2mc8zVY6wdHzPHi3lCcAFVTQeDV4d2Q08l7tRCIEnu
	 7Uayc/hmSyX8F84ZWZYFfFuXN5cWJBloxq+f6jTmSbXximhky/MZYrghn5kLXM9uS2
	 HLPr00eG/xexCANBQZeVahDzR/soAgGNDOIo9iQ8GkAvBC8eKdQ5PJVH3y3XG70G/h
	 eGexRBa3nPfPcOchSdrIur8RP4O8UJv2sGMc1kYFbLS6pEr3MfaPVVPx5shjtNjWVx
	 zCZP4Af0cRFZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3050C55172
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581903372.17114.13003720475035436607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb1adc7257f31ae720ef1221111085eead2887381405d4127a45aa39ad9c010a
Date: Tue, 04 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785819033
