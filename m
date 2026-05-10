Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434CD1D54FA
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778403634; cv=none; b=VVRI7JlNibLZZ6dYUnVNVxQJYs9mf33cVAT3IKbWyx1T00IpjzHqfrzUquEZK0cj5e6+ylnosZYVDxmisRQHStXwsqRGXUeKKCfKT2IuOHeurmGccTS4Kj+tjF8uemhNf9rvV8o+y6MDfIg48uZqEjJRjA34cmVoMKgekQgtwvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778403634; c=relaxed/simple;
	bh=H+ZbzECTjIO/ovFqUC4YWH5Y52GYJrovSr3ehCc0gzI=;
	h=To:Subject:From:Message-Id:Date; b=s8+yofUcbzJrCyUy9Q+uwDSrcQ75PcEjQptfdqG8tr0oDNpYvY902oE4KwYgiYhe3L7CLf09YBmozNcwv20x2MMRcX5VUJl6BhZgehiDmTOna8f3Zs0T2SE4cR6tayNioP6kdfiI3aZ5YfIJU+qZQDwqtZMGdfgZW4luDDF6Ywc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oq8d8S5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oq8d8S5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEE4C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778403633;
	bh=H+ZbzECTjIO/ovFqUC4YWH5Y52GYJrovSr3ehCc0gzI=;
	h=To:Subject:From:Date:From;
	b=Oq8d8S5vL8FLhnCP3eVaQBLZ+dXzkw2eM9y0Lrg+Gmpz7NTmyxBkM6WmyO+X/Qat3
	 HG/4Gd+mRGHL41GVFLiitn/ILQOp3iTLvnV5M1fiQRHFJuQfsqQzwVaOnTHGp+ZoIC
	 jObZkcijmf5xG/KtsFNS6bqn9loZOSPuCjlsWbH6HkoQw0OJAhNwUH8FbN2F31m6Qn
	 hwz3bvZIo04bRBtFtGFwJarJ8G8+FVsvcD16s3C/uiDt01Q0WS6K7U3GEC2IWqxjpd
	 +WVYYWQDBn8ecGz0pXizPcFVAKxch89jHFS+TyBq75f9WOnnO4UdAja5AbccZA2z6h
	 5N8GIbq6wYUTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3D3CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177840363368.8710.1700236686454800460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241eeb114ef788c2c767f8986545e2add38afe67619b295560eea322202105ad
Date: Sun, 10 May 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778403633
