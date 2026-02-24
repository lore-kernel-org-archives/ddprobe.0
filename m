Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2085733EC
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771908894; cv=none; b=qRwSlEz0jDfxBPA/smDLXeNme6JFbU1uPRerwwVJR7W7jTA9LzwUYsV7BxmuAzc4aUgsrWHDOjW5k8faVuut/8Xx6g88VctEjTv1gf+aa/qz6Z6DM7Vim5OaBjbt2qgV6ic7CeZn6LDxjURCY26K9NLeI3v2cQPUdueZ7Iy7NtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771908894; c=relaxed/simple;
	bh=S2UtHEm+S5gBEN5FxfEMjzpM2H94xTRNlIlzSeLGWlI=;
	h=To:Subject:From:Message-Id:Date; b=blKgzwThXzJmtA/5SsBrFtdO1AAYWkpxWxhWi+YhQFAhI6vqmmWi3VfSvlnHCslLtGpqTSHaZvZ+rDX/tJII1gzWd/7RQPNKYK8OSe+IBtoW9xigpcX6ZJagHhy6NdFPUx2b4mTURci9jFkOy3hZGyelhJME5d9WpzQDNxZdAtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hI7zySAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hI7zySAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF4BC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771908893;
	bh=S2UtHEm+S5gBEN5FxfEMjzpM2H94xTRNlIlzSeLGWlI=;
	h=To:Subject:From:Date:From;
	b=hI7zySAhGxIZt99fwVwQ9OxmE32D80uTx/HjegI2b3GI/FgomJFLbcZVyKfWiDvID
	 N+jFEDAuU6osteEcJtbQnMQjRvOx5F9VWPO3/XQF+mzBFwVr3b5hoqERFM3m81qAQ4
	 IWUcUlvPAGMR4/KGPjYH/TR4Y7KLvezvMOAoMp4QaWebds/mLpBghXI7pb5SMbSIWk
	 pULJMTCr9D6obZ16oovlt2ovBi9xXUC7rJJOiYtIsOR1O91SXr41WEK1poHd+rvbml
	 vU6vwY8tsXWobuM+gdkRklG5tudrx44JidiMjAr1Fd1Er3WHYava4QPa8DQo8G0QCN
	 nb8TI7X4J3uSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AB4EFB7EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177190889358.21946.5804770978846978936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61c614f671b17a0b13ed29b60f00ebd7e29e53ec97a25e2bfcccba1da5b74be7
Date: Tue, 24 Feb 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771908893
