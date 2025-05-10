Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4B8B67F
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746870594; cv=none; b=cWSVpn4GcKqIbeD/S35buo5BUYSPw8OCZm+Ls2QSq1Qx+bz94B8IqnaiSMRqTsM3fErDU63nHn0QDf46ST4wyiYVHfu8uojpBNHbC8vugL5fkpun2vA3aUkaMQXlRnyI/7OedAgWHfA35A4dVrLPUMnoFcHblvvBrwVMR7BJJbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746870594; c=relaxed/simple;
	bh=Ahqgrs5aIo4aSzE9ZFVSl7qh+vLIayMWnqjF+1Q9M6I=;
	h=To:Subject:From:Message-Id:Date; b=KNeufvdGqgdXQetdWFiB3ruJeZbS7NamgtNh4QvS5CJeBKLcJKlUJuLkl1tQSurfV/ug9PUz+xGN6k8Pl1P1PbUt8/NxHgewccP5Cmldw+nQ5POIwR8RodHM6Fn+51O1oMgzw1X4nyndJ29TkVUlVFW0izodHqLhZFxJWoZ4l8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLr91gBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLr91gBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53F7C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746870593;
	bh=Ahqgrs5aIo4aSzE9ZFVSl7qh+vLIayMWnqjF+1Q9M6I=;
	h=To:Subject:From:Date:From;
	b=sLr91gByI9JHeR5cIURGYea86c4fo9HpQoBwTUeIHQ5l0m5cIuO/zPyC0vx3pzT2n
	 D7KDtfzp/MIov5iAlbsUR1v2w3jiQ55k3AxPjD2Fnyfmu+pWzH8d0aRVwxLbbMRyXs
	 c/mL3iKAhkncFfZ/UW+jPkH5mt4+k9h+UX/7x0QJDAWjsOtVVPSX/BgB968PzzTbSg
	 3O6QDQ2tgGUVwxQ2sSZ83j4aFGzQUFbsSMjMZTTLVzcnO/ApExFZGTfHSQbY30lske
	 qhu/NJ0rpcOG9aFPlqpoKSl652hjJUAVAApkr2bQo/AML9SxoU2r7yYfxRVy9J47dv
	 8W3iEYwE9ZeOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FDCC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687059357.3139.3446592162090359072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504738119733196b597f37996f4770551cd571bfc8729fd1e01bc2ba2a59bf92
Date: Sat, 10 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746870593
