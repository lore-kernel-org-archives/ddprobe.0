Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC2D2367A2
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761347994; cv=none; b=pXDIdOFmNXXD2nU3oI1NiycU6R/ItEpMhl/dZ4mdwjLDgJVlF3V84wtsX7XXOw4Kb06NHPWUnnoxtQXCorKTh+r+BwDjZnyTd//z0x1sqDd81PcID0stoILe/ziUOR0wqKOWHcHDDtBNariSyN4xD2W1QHq86nnBm12Mnf9X+64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761347994; c=relaxed/simple;
	bh=Z328PdOZqkGLNyXPYA42TPTODFVQmi9KO2trVUWmTeE=;
	h=To:Subject:From:Message-Id:Date; b=CElcB/9dk7VmFgaj6E2hv/sA8c4oLnk+H9JQ3RWSosubiHkLJqvuxXI7z0FJf8u24ekS8lc1STwXryN5eSiGRb/nW9YhuzwGo88rmLf3b50YwiZhH3av0/YUySAouZOK5yRxZlQ2Mdrka1X65sqm9bbwEzUymzjObaqk7OGIvRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5Gq3Qv+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5Gq3Qv+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB3AC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761347993;
	bh=Z328PdOZqkGLNyXPYA42TPTODFVQmi9KO2trVUWmTeE=;
	h=To:Subject:From:Date:From;
	b=e5Gq3Qv+EuRqV/Qet3eLLusxMEWngcqO5bz7LbDb3dFHQTgqEdfmRMwQny8RuwIeR
	 bAu7F/TpQaH2EnMdT6U9QWDfD7nWkAJIPM+sOHTWe/23Uz/914zmBSPWI2fVgx0Nny
	 w6n0FfuuwDvZiXn0my1OQaeIElX/dG37otV5W9qNkWJE1JgxOcrOtGaEfR83BwZhhd
	 AKVFZawgz7lstPdDSR9/A9nE0c0XMCMHsl6iKLeThz3YwsIlQvRDsUYrPYHxLEBYNE
	 3jRudDOI0m8FSXyQ9CrmaV9chj/DhOTNHqDyB1llfrDKEehn6EqCza+CIzCCtXCanU
	 aXsKQ8bT/MXGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDBBCCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176134799358.2262.2859097075277701482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614338037592219e3479248ba931d3420ebad62d55852fbb21acd6288bb349e9
Date: Fri, 24 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761347993
