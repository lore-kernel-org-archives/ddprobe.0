Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B25B28373
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750559394; cv=none; b=JW0N3UZ2np/KWChlYuShqMIsdCvTY1sqGdS2vk9xJKgHoOsbtg0j+XKN9yuqpJTSUE5/xF3Jj+MRf2hj/Gl/fhAXtmI8cJYfl3+MvQmJkHmV1zI7ZuYae7Ar6QVo6j8XmxMDID9ROc7ORsM9/UygsEW3QT/hu0Iq353n963ccV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750559394; c=relaxed/simple;
	bh=2VKCnFVjoUxjnmT6Ht0u9enOXdwaWAY71THmt9Shlgo=;
	h=To:Subject:From:Message-Id:Date; b=V4uZEMpxPDc5b15O/bpuehVSgUnZ8Pj/SPPB5C0Mhi7g4yzW5X7LkgM7sATaPtBNtHVaXw772bBLgTOL/KeNfJmv2weOk/cDs/jnUX8g2g5qTbgowpsL1+1Q0OYSqlg4qB/Mk8RUJNaLJisTt8JcIM2Odw/yIeH7kaizrXPIpYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzzolfJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzzolfJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D49C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750559393;
	bh=2VKCnFVjoUxjnmT6Ht0u9enOXdwaWAY71THmt9Shlgo=;
	h=To:Subject:From:Date:From;
	b=IzzolfJXYuoIFVJ1EwsM+z82Kx3EmL+3dOwlutOPfwHeOBVYKOJKNTnnxgryoi/MX
	 jhI8oPL8iPNiex1uC8jFmUi8g0xdZC9z/47ZRuhUMkrAz8S/ZHeUnMT1vrv4oR13S4
	 VNvaerLtx7AKX86FfnYmQQDodYQUnEjWvB4qJEwRwBtq/wp2qfY1+rtVVkGVTWDvXx
	 d9CpXtk5vIAnyw1sl/3wx3h6xvTOQv6FeR7WGTxr9c/rUElmb1GLw8tbU0E4uThtoW
	 4FVK+T4aPpQRU+9lMA9DbbV+zsSvAYtf8EeMZnty795CYj90+JjGIXDuO/XGQLLbN2
	 K6Z3G3R5K8hIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F50AC7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175055939357.11172.18140943074625560661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 288ee2bf939f90b5c883df13b1e13d561c32c2ac9a040deb48ecc65b22f7f95c
Date: Sun, 22 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750559393
