Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2607C1607B4
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730500554; cv=none; b=ki8Km+LXPhf/d+3yaohQwzhK1EPcyt9VVs97zFq83Y8quLzdh410J01t5Sd1TDu4QV+v0glWhaTHjJcm+g+KqAt3ooHsyg1MiNCUtIMYo7Adc9l0WWjeAkoCDxsA84WkZllXrVZwoAVOaXdrisWz5Ywxw1V7UWk3ZBpo2o3FG2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730500554; c=relaxed/simple;
	bh=85WILmsypyx1IOtOs9jgm6klwK5ygRrcOW/NxW0uDFU=;
	h=To:Subject:From:Message-Id:Date; b=T6XgfiFDAop/O1oLrh94o3gEBU2N2YL2ZBTYTI7xznwUtAiK5qZY98X5zBsx1qD8vJqIPWQUGFQIz3o2WApTLyNt2ePoAZmYWHPLEMiOXmR7vd/cB+9EbRcLFDSetUNflQ5CA3eUwcDLueVPsSmZEkJ0iLiyeZLAxRUmS+USotw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVUrAn7C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVUrAn7C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF97EC4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730500553;
	bh=85WILmsypyx1IOtOs9jgm6klwK5ygRrcOW/NxW0uDFU=;
	h=To:Subject:From:Date:From;
	b=uVUrAn7CwU74JEqvzKsXJK0pLJ9LZQ1BYAVEY4l7Fh956i4o2vlXXUPP9TZlfyI14
	 Sg5a7ZGQMAXC+knckWug8Xkq3pdK8QUIMN15IZpfMnfD3jfRN03Lp2pGpj/MNW1FvK
	 N7Ai9bXemL0wt9VX4dQeQEytGCM4u+vmn9+vxrSVJJzpnOlg1IMcObEnRHyP+AekTl
	 NUUb1LjBUHYQ4FGsopwmSV/xSaVKvmQ8AhWz2m9LqB+Y4xNVEFMdgH1cqvswc01zRF
	 xEn8Fk/GjLXYUeBB3donPGl1V1OgMawF3KDhHta5+Tqh02cQeBbN+3n1jYn9xvG+tu
	 Cl9lCQz3HJTtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9959FE6F093
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173050055361.17218.7979508718304854641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd75f72b71946698f00d12ed81db55c376154ee24db35313d3ea0bd9dac7b462
Date: Fri, 01 Nov 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730500553
