Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE892DAFD7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777659454; cv=none; b=fe7gLhdFve1bVDe0X0tsOyVFJ2BN12uTXfam68KSohvpc/60P8W95m8uwqRL8dFmDUS5j54EPOot5yepfDRPO8qASJnL+r5yrQ9dUOfCciS2HrLq30KQ1Lus/enti5RiT6jMlWm3AxyumV/pvKf2iQ8h+RqTUAwGrMtbddFeSuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777659454; c=relaxed/simple;
	bh=GmajtMQv6pm52f6ZVuXbvU7qOkpdKCmBk5c7wpevVnY=;
	h=To:Subject:From:Message-Id:Date; b=Y2bG2lW9v0z85X1aZn762dvgtpJLQTjFeo9DvVdtgrp55Bx6MgKzWpYyJ4RtEfPLVDZoSAG0+9obTfGNg1VvbevZYpPsczZFukdY6l+i/2tEE93CRn8gSyTT1VnrltcM9JJ4Cqdb3skmBQTCNQUwqyZoRv3VrsMJOZuyQnIN2iA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMftfwkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMftfwkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE088C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777659453;
	bh=GmajtMQv6pm52f6ZVuXbvU7qOkpdKCmBk5c7wpevVnY=;
	h=To:Subject:From:Date:From;
	b=DMftfwkJ5KN0gBA4a/oLJJoUhDBkoqXnMCAzeMsrwZKB/FfXONkkfCkEcAcrnGNeO
	 FusEIo1Yqwsa6+h28LwCPFTZeT160Bl5YlR5rUNd3wBw8mMtImAVhlD9icJMteeXsw
	 Y7ksQsx/j3WW9FdZKOi+4tH+1JbK7Kldj6HhNBM2bVR4gGSjuubwFdyHkwZfKhjTfQ
	 IHSBiT2y4hLt3qrPnuDAm8Mw9o9+4tEtDfTJgTSAzmAmx8JNNfbQlw4bCAx8PrBxk0
	 EDYrND92dsKyHG9V6amp5lsdyY+Jzh9trD3NiDrBK0x1Dzy6Fl190uVAn2qQl8fK6F
	 mjhyLyc5a5vxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADF7CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765945368.17847.9298993780822211486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72fbf7bc8059e2bb0e712fd6349a328b291d573290922443791934e20c054b4e
Date: Fri, 01 May 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777659453
