Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371B01E4BE
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743256794; cv=none; b=ai7RcsqCM5W7bxz9sGzFtofK4vy3UYfJ2kNc5JkU5YRxrLgJuO6jtp3lhZ0HrEyVCvTqu0eq94q5sPbIzBF6SnHkpJ8Ory/BxYLuZimNzTHGpm63YimlWnb/OkaG/gRJ+FN6TSirW49vkS5NNWndwVEltiRy9zGUAcnxB4wvwoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743256794; c=relaxed/simple;
	bh=kwtV/+GOI+H+KxBv9OuPqOXfgZU2r17nUcAm7JM2njM=;
	h=To:Subject:From:Message-Id:Date; b=phuMa8c4qJhj/Pw536MxoEvl1lr0yBb40M8RHn7rVhe1UnxG9vPy/W25fw21qY4vgjRroSm2lyEkL020h8Hx6t4Ik0qsN13JaDoIjtFpB3AYP7BYPoGV3hi1NufhUtEeNYL7SRVjYJ5u0Y9kHm2p44wscZUuVjCy9NW2UZYLQsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gV+/SkCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gV+/SkCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6EEC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743256793;
	bh=kwtV/+GOI+H+KxBv9OuPqOXfgZU2r17nUcAm7JM2njM=;
	h=To:Subject:From:Date:From;
	b=gV+/SkCHuxWxPvBe9ETrJGsvoSZVycnDD8YNmc4dwqylMHKSxPo/fajUij0d2EFOU
	 1sAJ/vxvyoSoKo6GzGw7BC1tTlo5rPfJLkgAA3Hh06SF7DLqgeqezYnTUcDDjsZM0j
	 FnI9jmM69ibiYahqo1Tp+r3lHqDcSg/2Nrxi/N3Lboejk2b14Pvl5njXaec98nfHOk
	 GcKM3BkoGmbI1tjuYf7Qy2BwkstiT3Eesxl9bEcgx+x4uzdfuzDweT0jSkCR3RF8c5
	 zLQpuahJaDFIn2Q7AAxL1vGvppDQLGEAO+B9wAgZMTRkVgec5fXvsO4X/AjQLofRKu
	 DtzZtrNwjBXlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C4FC36010
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174325679360.17577.10102485402595873084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378ac092552b8ddab3fff633cfdeb5be913a9746e3d5cb8373fff4504538bc20
Date: Sat, 29 Mar 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743256793
