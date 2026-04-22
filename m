Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FE419C546
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776817654; cv=none; b=VJNu1Zzk5OC7mIp0Tt9u91JJey9P15S2Fre/Zbc7lZ6N+KlNkybrl2pqPDv+dquj3oPX+31qkn/b7mFIy6Vn5TjMxiC8tgLJfi2zo+0lwVpNyjh1Vq37IiyUIw9G6KUzo1nK0Bw5a5bG16PCf4KCsde2dwIRr2QnkwaPmMa1NdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776817654; c=relaxed/simple;
	bh=ynoLJ8kUsVSmG4d3ijQIuMky0+bsGSEXF3t/0JhhzrY=;
	h=To:Subject:From:Message-Id:Date; b=hXVE1ddSa9dRzX+/Z7zfxUVwgbWiXHbmQDu4ojLaSopRcS3H5ARYVg50eK4dDHBix4b5vUNTt7FLllikAOJBB2uRIIK5Ueuntwj0S2KnGIe6DtNj3OjNZJRqnzDnxUimLlWPNOIRdjcqNAm6mrtebGPdBBSNQY931RFM9x2tWno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vE+uZufE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vE+uZufE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B678CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776817653;
	bh=ynoLJ8kUsVSmG4d3ijQIuMky0+bsGSEXF3t/0JhhzrY=;
	h=To:Subject:From:Date:From;
	b=vE+uZufEm2vit4Rb4Zp6+0N8kX4L6HAy60/GxYhm/NCn1yUz7M8VqVsA4MZ/6UopO
	 ApKCvBmagJzng06VrgyKoVUy/5v8OjsGCyhbILUTRxEHoC/aQNIYoKl5ZXKSCniMOT
	 FWsw9tQdcl6WwmbHWCaXWn5VrtBH/SzduQF+Wtv6dloarrjQQF9aDeDOMvXHx6lQtd
	 f2BVNEhtcwGWY8PyYLncI4ygpyMZFBeGey99TXlChtoOukt4N+yPqx9zw5cDFXAXqt
	 fvv7GjPaQzUy6MTnllpej2kaZAaN3l6hPs0VLgkocSsttMV2vXlfPirxdATawQ66x0
	 YofEOZla3nbWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9227F94CB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177681765368.6136.541413890949944500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe6c01eb5fc6f2d1648a302e57332a8264dc1d5a94c3c105dfffa2590f629ee
Date: Wed, 22 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776817653
