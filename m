Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC61224AE0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749842994; cv=none; b=FDdvKhykuMKjRYmmgYf1m7wJQKYWYgVD/UuU/YvhNvePga6E6ULCxkttMebbJxhIzMsyPLONVuL/8GuTCy2QkQ/3BUn7MdXGERMsU5uZ4a3AAv3A+EemAsitqSZt1SZrxu2sb54Z23WfKncHpQ2QIwMMcH+9nY+jRL3/lyK2cRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749842994; c=relaxed/simple;
	bh=rXWnu37OJR+raJx2KZLMRbOE/48X9U8hDk2x2L0jId0=;
	h=To:Subject:From:Message-Id:Date; b=k3GyLB8mEi6/6nHHaB+XxyT5NyiV0iHDc39tF4zr/Z0NIMMTEoTi8DCMw4HR4s14jS/FeYo/vY/RZWFtZMCQUniUSQYBdhrTPfannT8tXwFl0yWJqRFFyfLEwwp+otAc5xbgfQXc4m2YBGFioun1Dmq6gDzkxaEKtq5qcH8yGwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsKQKyXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsKQKyXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A9AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749842993;
	bh=rXWnu37OJR+raJx2KZLMRbOE/48X9U8hDk2x2L0jId0=;
	h=To:Subject:From:Date:From;
	b=jsKQKyXUrI6jbd0L09YZ/rZ8bfs4LTiJrm/77Bn7t8cc0PVomV/f0TLpOpofL/6NF
	 KO46abWpNAYuZ/wzFSz3HeiGEUdkhW+wG6Y9pn1R/ZgL+dO50qPjMy6XOcVP42YfrP
	 UehqGMUmPMeaedsdpqw5UeQkF7krvAR2x/qqSsce+mmcIAGU1WKzb93gg9T5JglQMY
	 rTJUT0rSkBQePO0AgPVu+++QmbTE3DwD8vwfbsGjjDVtAFqSHIc7TD1ULvWbuDYSct
	 qFYD/ibXDiD56ajDRDcVNkt3HLfbf6Mx3x0VEeYuzbSf+81yBtFgooOkUOJ4Wowg1y
	 n1M2FaTwtrkkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97188C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984299358.32241.3028969995534172775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b82537424caba9649e48f0523fd15a8e627bc621668991d3e503a258cafeafea
Date: Fri, 13 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749842993
