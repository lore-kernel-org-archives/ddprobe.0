Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C54A1E480
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744462794; cv=none; b=p5juDVTdHVrPUtKXkly5Cb2v62xa9h8hzFkidSj5SL+vfvWkeU3stoDOI1VxsyhNhSDjIf4yh5xR7bsR0xluC41a2grekb9Kg8qZD4l1Ywv+AwoHG5qcdyIMyusqnaUr9eB6GykTUmOf1xx4907FxEYh7kxv57ljzgfuaZJbQ4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744462794; c=relaxed/simple;
	bh=Fg4ePmMpYCY1LKfp6hP4g6q/iQa3KnFxnCc1I3EtqgY=;
	h=To:Subject:From:Message-Id:Date; b=hljTvOYxB88GvyX32A8olHoyPeAkFs1xpMsKVvhtO5/hWWl27MBrDJEE9FPO2SEOLSYWcczz0g7hmPaadnMb/Z8w+WuGa5srLZZHYlU7BlnjKPcbowc6tBex5+NytA7R3qoaG4UzxBruRMfmJC9db8MiWl3R3LbLtbr93064rKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQ8qS7TJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQ8qS7TJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DDEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744462793;
	bh=Fg4ePmMpYCY1LKfp6hP4g6q/iQa3KnFxnCc1I3EtqgY=;
	h=To:Subject:From:Date:From;
	b=WQ8qS7TJKbHsDtnXkk8EjaMXeEzE7zNGmcWQrRG122avrNAxSoYEINS2VgRx5zArm
	 GAyuP2zhuSzP0rZV9B99bWjnEZjqi3fL9yYzvQHNVA2RNN5qlDoWuWhgRD9Ji4VIHz
	 HqLaOuMNc1H3Cpt/3fShtCVq/qaelEJ7WPqtnFyw3tznfZ2uKVucdm6GBh8NhBrmwQ
	 /f8TT5laMn/dxcsqwkUTWawal93gK4TfmafW8mAGm8jCEK/jmN7czsq18rIg4SvkJk
	 VOtvEHk7HUs9pl3t+oX9HRFyUq9y+hle/BojvPku9s5G7Ao5Wn12Ay4MyGHDTT3V5Z
	 PQz1eIK/x6KWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99DE7C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174446279359.9636.2475114422394625666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a7143648b5dc454a67c037b09b7cfcf2a192f56150d2728a3d610e63bc9b36
Date: Sat, 12 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744462793
