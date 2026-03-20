Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5809346777
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774047294; cv=none; b=MYqN/jV9nhw+6RMjvQvLmRAlK77tUiIGl4vLD9w29JB+mHlNi5mvki+qYBWL6gVtj4rC1FO+qwCWiCpJBA9w8v9X9MkrItkZku9/8Lu/jTlsogG/QgsGaR/P0r31xjwGw+lQPCghwZTanWn+V5aFIONeqcDiNyvDYt5W06V7r6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774047294; c=relaxed/simple;
	bh=vxCNi2mDHOOVllHpVgFKdgh+0jPNBpPgIeR2rgPYdIM=;
	h=To:Subject:From:Message-Id:Date; b=RnOvg4xc2KFwTMoU+upiMvAoO9wmhAQisVl3uW79wFBbaKkTI6Kc9vv4Jn2lmHMG0KnoYXlIoRMJ6cG5ciSZsWyQML+zEUjalnZvJt/JZWD6sx5oesIm2WpIf6wSqmvkuiBPsl0hfEdRssh4wmhB1n8suYRZeUc1xq38YJ0bTIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVG6kefX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVG6kefX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFF8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774047293;
	bh=vxCNi2mDHOOVllHpVgFKdgh+0jPNBpPgIeR2rgPYdIM=;
	h=To:Subject:From:Date:From;
	b=dVG6kefXcTO/2u6wwL79s2NuAxX7F+PuITzJzqyAIcv0YwpBq1rJILifZXtLOlFIh
	 8igc6q45NicY0j6eJMxldyWk3xVLHlHefIVQPl5XVfGnxl29dpLMypta6dO+WESdNj
	 333vKlQJVJU47t3qr06deAnWuUzj3KJgLqX5lDkwUWVg5oRZj/dodfUSJdZcdMEgnQ
	 XVuiYrdOU4IrscdF8eBLREnE8+QYqcOksHBDE9CSzDHaQwDZ2dufGI2R+bYAkLmLDS
	 UNKQGkpRdV1Zii8jgQ+7WHNfwmmIrQyTte3jPSAS27LukCbxpmQEl3xQLTcPQ9HP6p
	 5c0b6KiDDRfUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985CD1099B4C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404729360.26453.7548227729847964643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05e854225bf64ad099b8745319a5935debeaa0959f5367ee9fe6b882ac7551b
Date: Fri, 20 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774047293
