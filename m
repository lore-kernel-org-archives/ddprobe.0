Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB9B33128B0
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770817493; cv=none; b=JH+bL4GJYjyovEwZAGWtLBSbAU1YbUz87NXY+Zqk6cH/nnvkfWQoKMUUyWHg5rhca0iMLOc42hRM6J4cgDSXWXha7eVINObT9HWyy0/5q6Ruof9kdclXFI0WQ2EIH9E/xncou6K/BoFUJkQ3poXBekZ69mQ+wNdg8GdjvsbUzZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770817493; c=relaxed/simple;
	bh=DDMd92uznPjA+WT6tJS2TuCuQCEOUjdcmnwr7+kxyBs=;
	h=To:Subject:From:Message-Id:Date; b=C1uYf4VW+d8coDzK9wHcEFCN/xdXfcsxuucbxnhABU4Mf0S+YNNJpI5IxpW/E+bbwb1WooNC7p193un2d2lhZDHTPWbnbqS2ItxfmWQlbXWQwjEVqM5jBnObtplj+o31DaGLcAFw2FPsZRy1fpN+wsEYZR2nhb94MT+jAxR3bFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cb4aUGA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cb4aUGA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD53AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770817493;
	bh=DDMd92uznPjA+WT6tJS2TuCuQCEOUjdcmnwr7+kxyBs=;
	h=To:Subject:From:Date:From;
	b=cb4aUGA/WHwj3Fca/k5lzfXmjgIFeOSB1W8MkWrEXhEdnyuN4hVLGZtp6FQ1cRn9h
	 DWyPbz/kl3vdSfxXwWStLXNNLMYz+yr+TxY3Q+XWpn6jnAkMaxDrDWug2IpebxYXN+
	 AL2QO4ZiJ/jVzMVA7nN431e+BtMZYsJeGHgO9r0KgpnGLUyFk7gSOQ9p98AlwFOYZ9
	 HS0nVGA5KwlN53YXyU1hqZDW3QadcHHS3GYJj9jBkZLcmdlbHmNvkPfVDBIOebRD7/
	 bYrD8I5bLcE+R/5F5ZwBDcBt5KM/XGEh1+Wqg81f3FZOz5Szp7fRWifReY/d69Z7Bi
	 MFhIHPYDOUSFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C87E9E308
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081749367.6419.13738776031043787893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79036854126eb894bf8c1d273c80d4870436165cbbae58f8f0af22916ffd47b
Date: Wed, 11 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770817493
