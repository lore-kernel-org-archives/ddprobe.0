Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536906F2EB
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717170863; cv=none; b=GgmHMl5YAYXxqikjtmJUKD9qXL90PqmNc0TfKOf4HIv/Dp0p5twwAy4oVfJq4VBlONAAJDg8x7+J/nkndoFN1lLwvzJOAF/xgMDi33Ih644EOjs9GSXtL8EY5I5l96Zd9LNpwJBm0LOw2jdV/HSrutP3n64agGeB/+dDmFiYwZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717170863; c=relaxed/simple;
	bh=e5pl/7nEZUyhjUU4yUL/WuSUWyC0fNh+OdgoegcP+ps=;
	h=To:Subject:From:Message-Id:Date; b=vCqt4KHpk/dkKJunqk1va9gqbJECxEbGhd9ZsPLOjCGdRUdavzlOBX0e+Ah5nx+JHrEOpiQIKgpI2F2VagR6ACvLo2CiC37/Oam5EcYjY79tHVtI05jHQSijQ65ipwFHEEWM30Xc+B56u5K/yFHsVL884Gz2I7KTZLTl3bWpTuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNiKx4vP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNiKx4vP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D0EC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717170862;
	bh=e5pl/7nEZUyhjUU4yUL/WuSUWyC0fNh+OdgoegcP+ps=;
	h=To:Subject:From:Date:From;
	b=GNiKx4vP3I/RRYq5wiSd9A4+bTa3iRAaYM68uBQCEgnmc+Uf7fKTzInmIXyT0sMc8
	 MXonsv5aJoA6rPedLcMTSrLggz4lYCKqomnQwbhvjmhrwY3YfgvFGCL7MDUTjM732M
	 TJBp4pmlCT+sZHsdpFbSHL1s0wr+eMhuLYlH4oWk6FSIodAif3I/At61HIVuxqMjCK
	 Bb1ghT05hFuqer3jzjilSPLohAuq/84I4CUFBTEQCAfruqW8jp/TajuAMnSg5RlZfG
	 zSQMViDtFdLzlb+fdaP973wfVGojEF4slT30/YAsk+bcPTylBNVn1RHLHRvVfi3BnP
	 4kFas9eWNuSyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF6CBC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 15:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171717086280.9895.10885139743366372251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e2edbab1b29240079bc5ad8e8a65be449937798195b1302496ef628679fce8
Date: Fri, 31 May 2024 15:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717170862
