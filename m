Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDC4318EC5
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784359714; cv=none; b=uMBCzJfd32dob4wuGpQtTLMcIxQLTTEsjS4CM4VvPksigDzrFQeYxZnYgHXuVW2ccXypcHmoDGWYIKU+wnweXr1TRuWnpskVd+bXMzfhNbiW4wqil8HXJOn9UzpdfdocoIS8j1Yt0tA90L/Oo/N1T557SHrN+65/kdzcbMVXfz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784359714; c=relaxed/simple;
	bh=KaLwW8JG9yVq/ObLAXy2M0j3tvvAyVJZo0GdXtV5jKk=;
	h=To:Subject:From:Message-Id:Date; b=jIyOTNeNF5KppJssOrxISNhiRAPeC/yASQmgWzB2nshnhTLY9+CUN+7M4AyFuEGb3ZgIv12kTedSgY+dAmRvUawO+Oi8iVqueOKMp1T+IPf8RtNI3U+winuPWUnXxVfXtlz7ymBJpp/9MbDqTgu3gk4kMOq4gWMaC7Zoj7i2NNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1nK1R6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1nK1R6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A6FC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784359713;
	bh=KaLwW8JG9yVq/ObLAXy2M0j3tvvAyVJZo0GdXtV5jKk=;
	h=To:Subject:From:Date:From;
	b=L1nK1R6scAnK5SIQiXa2rVsm6Lfq0ZTA4A5yJk0iR83fZmvgOENCMk5ITwt08/mWJ
	 LXP92TOUMbQ7znfvVugYw5qhlz09LWSG91j1rtNyx/7SC4Bqpn9wRiJfwYVu/WrzQt
	 agno2rJH00g5ZHjvWNAoHOxtP7PHjoz499RgEdZS1urO4XRHef1jazHvsqHIckuphv
	 FzQ3MW4+NuoNT3rc1ECsoYxUYQ+8R9sK23w82uU9YBnnpX0hZSLFs9uSDKMnc7mvaS
	 Is3C5+i0m8X3Ur5V3hsUSnR7TlLff81KDmMSd8dQYTkdwAArBcnZkUvkLFeEp2wuwH
	 niK3aX1GESF9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F8CC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435971372.10270.17517399692438708265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f768ed33b8472eecc9db42d3139616f9f990376845038152d40d25056009bc6a
Date: Sat, 18 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784359713
