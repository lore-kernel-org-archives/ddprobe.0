Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9265C225AC
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711304296; cv=none; b=Ud4SkEBu46GAImk1CIugBLdpNFfCXE3rGdu+lQFjpELz7MuSS7zX6AbsMEZbXm4yV9wDNzmDoMd6Hq2OA/BKK3k09qM1FWeMeAAMvCfMGvZiwwSeF+C76DvTVFATI8zZILr7wX/nTBT4WkvgcjdbqicTHzzHE7/C8m9/sgtAJMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711304296; c=relaxed/simple;
	bh=Vm970s9VLwovSOXtYjfY2zp2gbCdXC4xx68gMa5+aB8=;
	h=To:Subject:From:Message-Id:Date; b=XP3zRilO3jvZKkHbf++jAUe+Xt+A6QOqJAJlkHeNdzWVxOxkd7s9/UAhPaKzrjM5MCLkI9u3H0Qpy2qnx4OdLjPQJWuN0ki03thUlghClz8bb1G0GYUYeKP1w5dWf7CJNDgLbz0XkC+gLPgCc6OwrZ+JrP4I/K9kt9dbkSBZJDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dV7ZQB/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dV7ZQB/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 738B7C433F1
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711304296;
	bh=Vm970s9VLwovSOXtYjfY2zp2gbCdXC4xx68gMa5+aB8=;
	h=To:Subject:From:Date:From;
	b=dV7ZQB/oePJCvzPWc+rW9W8LabBggWVpxB7fEWa6KSZJcQuce4bt31Fe6X5Qr6Av6
	 NOqg+V9UAHid1B1z/gsmDmPMmAXYsVsL3bW3DG7Biwq9QlGLrtiWZ9foKjofPgwOJx
	 2AomprpPKiIrZnhJMdTbLLUBj2x+Q6yNT5UL4tEJRTqJzipYnKK4ZGlfzed34JE7C3
	 wK6rg1vfmMfl0SR84P14lSGLyLHDVvTv8/qkUPEn30ZfcAGFAUWd3hsZtWV7ySurC3
	 hvdTy2c3nzuGIQfRTa7Mgdb3JurfGiAheWmqd3v4R+6Eb9rVXp/5XDpvIPA1nYFFgT
	 Y9CXgk41PWXaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 608C1C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171130429637.19949.12977451479444550395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95b2f535fa22e2c647b13f6ac065507c73ff355fe8ab0969b786332b69ebb49
Date: Sun, 24 Mar 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711304296
