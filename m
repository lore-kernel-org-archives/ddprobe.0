Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A4A33BBBD
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787416834; cv=none; b=kPMCLih2R5Glvyed/iut63DFms/vYjDWMNQNcuuk/+BSY+cZvhWJLK3i0iQz9IYG+KjFZKiakkm2RXvCo+6oKzRcO3Ck7oY/yvkGQJVt7QzQcibzG5AtR3kLp2ViwoJisbwe39loC0CYUyKeBjlVh407f7CaOAdnmbHgqtMNzJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787416834; c=relaxed/simple;
	bh=8j+IUlfrkXXx1p6hGrF1cYAB6UJUloyFVaI7gnMtOYY=;
	h=To:Subject:From:Message-Id:Date; b=ZnrcZP56mw0EMRulgqM/IAHqu+A1USdvzlvwAVPLtfdHp5RgR1ZqVFQAy3fjaDql4JBtVehVQXvu6ECJBrKr5RiA2+zG1zQtwmpvje4TjLi6O2cPCn2QmhA3HLm6gCqduB6EFzsGXKsLJDtJGRls8eoeivkYe4lyg++lhVJpF28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1Yvwotk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1Yvwotk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2350C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787416833;
	bh=8j+IUlfrkXXx1p6hGrF1cYAB6UJUloyFVaI7gnMtOYY=;
	h=To:Subject:From:Date:From;
	b=T1YvwotkQsVczHCnxUMId2pgK+MhxPgtBwcXrmN158NYzwxDIr5nn7gND/tIwIZnW
	 3F1uZPCBMKe/EGmbxy5DrfbaREgdrbgn9CTcV0asapq85yo+Bp1clRHHepsScB/MxR
	 k3OSsSbPrqbEd6p9TDwNg1kappLM9jkJTiRUxYoaotqMnPcZcK/5bOOvSGXexIM7D9
	 i8N2J8e+Vxz8J2z2PNn5GHANkZ7V8nslXCWWYWbS0Pj6+6SlfPwodqAGHN6zb7isPl
	 VT1Ocm77CjJbcQJ//7kkAN/xyqlMIHgW+uEqcFxsI16/7/Cw+UBXHMI0U6lChjPYT6
	 5Wg7+iFde/XQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83A4C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741683374.15237.17168347618655880472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aefe1fb79ff1808f94a9b3d1b4accb4769ca1c2a17d721ff93645db887a380d1
Date: Sat, 22 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787416833
