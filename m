Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE5018DB01
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766721234; cv=none; b=XjN1lnsLuBoVa7HIxNBPFDHKBpJFROOftrbgs3+89n7vi+2Aaz3dEwAHSzZEFfrIFGm1qamshQ0Lo+qJyPCqeyaYa7GDRvxv5cgBKMpqADRbsYRc0XC/AX46osCLKPNoqtYmysWoOMJXkpOD98B5W1gYvpMjsGkUBzp1btqIULs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766721234; c=relaxed/simple;
	bh=GCaTSGF2ExtEwdztuSXM3Fm3wsGKcPnYPWG80VcTdco=;
	h=To:Subject:From:Message-Id:Date; b=aJB+i2pEfPhijE1MfJCpTbvVyMI1eeQWkMmwvvKjS3RQ50pVAr/UxQAZfAgkuYgrG92H9Yv5n6PamSJ0LmrYc6QNx1uycFxQRkgMT1p+cgd1n8coz/KDraebPhlTpnx1vBCULUEwTcXQWA6a0+94M/lLtZ2wiZaY9rT9hSNp/j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/Bw6B53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/Bw6B53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B21C113D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766721233;
	bh=GCaTSGF2ExtEwdztuSXM3Fm3wsGKcPnYPWG80VcTdco=;
	h=To:Subject:From:Date:From;
	b=a/Bw6B53iRdnTdzATyoLzgh/3jwdM6+1y9nJQ0/8aP47VYKf1rvViSJoJYgUGi3po
	 jDiHxEwIoslEC1AQTS/lls8/Q+yQ61FvVu+T3T/SZXWjw6RnnyRktofjU1P5nCmAVK
	 RYl2kGScE4R76cWwZvxdpFS//RClraZoYoOZ6/m2iRx1desMFLRADGeBQohzJQMGk3
	 rBRzpHaN4Azbo3f7wujYGrb3nnloGkLq7wStURqZbsTD7I1I6FNUE2+eph2qAh3YcC
	 KGcSyGN9uTAe6rtxdgigs6ngnkoGbJWqJkbC2S9FXwF/KNKXh2b4dbLmal0jSEUvkd
	 FnvOmwc9PXcqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A86E82CA4
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672123358.21737.12757151649928417028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b9649d049ef225b0d2630802c59808a088bdba6ee72a07c5b11d69db0760dc
Date: Fri, 26 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766721233
