Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AF225C6FE
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742812795; cv=none; b=Z9rYEbxOcQF5nFN/bM9mvK8UoQu/a/keJFxLx/S0sX6RBuYiTEZkXzT6vT7F11fObWZWLFUImGghTD5sgKu/zSuDmWSaYVfmPCW3+D4e/QwzmVkElA+NyZWrhh6QzWU1XH0nXSgbY8/fy3DjdgH4ae5Y0IzBS9D2OOOo1BIKZIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742812795; c=relaxed/simple;
	bh=kiYiApWzfIScHtAxTnN3/Jgd0xr1FHAx0HBz4gZC/oY=;
	h=To:Subject:From:Message-Id:Date; b=QmmuT+Tke7Xo1GJvrTaCIROldfP80XPArJNpHVOiK6rpQNlcDJb34jK45eUCs8YxlymqZYo7i1SwCRIa6aKItFChXMwX0vKVEVjgswXdsQQf8kFeAeqG4MhsuO2fAesMBIPwAO9m5YMk7zcdNPgjMtZvRYmZ2+DQUMpOxVsu9+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xndhesq1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xndhesq1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55A1C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742812793;
	bh=kiYiApWzfIScHtAxTnN3/Jgd0xr1FHAx0HBz4gZC/oY=;
	h=To:Subject:From:Date:From;
	b=Xndhesq1ryjTT3uk+u/fQmjdipWPdLTQx3uIuFnRiqkdd9Zvuh3qgN11io/Q5bcTM
	 1uS8FO1EPQGLz8qPuuK69flGvoIqjZUFfVIxQeVU/qtyy0qxOFuw9nM0YyJH70blh3
	 sr/4EtyrgiDf+PeYxeRns4+LBJLDwg13ji0YiZSfwW5UDU+witX1uc+JhBpxXzF/md
	 R6PfO7Z0W4I07JEADw0YefHynjoKMtWz/G2YzPS6RQBU7MWsPFWzbEAwbAMv2euPw1
	 EP0M64B3fMVeKtPZPaJWkFl1mvC5CuNvV+fmtcpLs1fHeiWpAzi+QRiKl8VcYV7Jni
	 CXnb1sig5j1xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A881C3600C
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281279362.14607.866940169401487284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d392856a2b8872c36f766029dd71dfebe2d2238574e75c710d2be343e281f0f
Date: Mon, 24 Mar 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742812793
