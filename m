Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBE079CD
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774213494; cv=none; b=j8Adki0rDHifYwMYGBN9IFpRikcQj0wEtlNb5UfbgBhhayQk4NoV1HUq/ldbSUYcnje7YC/ndc4vRgSnX4dH0BbP1Fq1seo3RBcLu4S9pJWT5/0b4Tb2HcGQMc0Bn+q0L/kxZVIhYwGeoiL/ZVZYJdZtBSz/ki9Gvza84MrLUMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774213494; c=relaxed/simple;
	bh=uOCJzIm38n4wThCVKrMdURobSqzFe5/KIY6lBa1CEN0=;
	h=To:Subject:From:Message-Id:Date; b=Z8UpFEpe3iSvWK1raxa5d7/ibEFMuxK2ASrSJDu79UXZ7tHuKbgjw10sZ4Jf//CEvuaLb3WRmwSUKcmHnNRH9rv0fTQFaB4KCQFwausMg8xoQx32mBOGNL5uBjY+inNvAR5kt2pYFMq45XonaYvNehQmGnGJ1igiP5SzyvWmUkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIMCBn2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIMCBn2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6138C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774213493;
	bh=uOCJzIm38n4wThCVKrMdURobSqzFe5/KIY6lBa1CEN0=;
	h=To:Subject:From:Date:From;
	b=gIMCBn2+A1ZYcFOC76lVMbqZNdaHWgyRvroV3xMUbQBAvsolQF/MbNrdhBaZyAToJ
	 Rdx9AByn4KhX/Yrn7kCIV3MhrSTcjH0OCjPT7tcru7NivoIY/wuyKKbz5ewN0QddKk
	 WhZcyTimCiAUJNgrdYYZ6kZ3WATcIxB6Fo3Ze56YTAD51DHd9VcZzDqgBLDwx2vbxj
	 OuOxMSmH5CRs29mz8wcQHlZbPOJdYOKtOk4e/ahd9MUOv77o0RsoHL35pc8xoUDjLu
	 itEFtfXD3wPSqaHLGLdAq8PkmKSzn2iW7ZH4sH4vN7RztvpI90sdNu41CQHwCmUxUS
	 n9cmg8+V5wOhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CAFD58CA1
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177421349358.4120.12625820202928307747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e607748c112f4801a34fe7dad31f438991a507fc9dc6a4ff623c0c2be8992bc4
Date: Sun, 22 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774213493
