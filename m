Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B1CB221F20
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767128634; cv=none; b=bEKxN0Vrf0ZVx2EFAxs1hpuBy6WKQmlh47sQ24I9Ba5sbWnSXySt2OrdVVyiCGqrhwBt4esLGjkIFgNRJ6t+7Twf8gGOxUWPTRlamz7PWbmrTjsBA+wDXRmd6YEJ5u1YJ3IEO5VwOr/+HdluxPc1AChoKIKSSayc59AWx9UXVN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767128634; c=relaxed/simple;
	bh=mK5Nrf+opmjhNZyG9688leY6xIy/OgjILoFODQKfTeo=;
	h=To:Subject:From:Message-Id:Date; b=U8JmqkOe2wtcKt9DuYVIayp8VG3xc3tTN1or8s6qGSk2r6HdJWcJB0NJaAIUM+3LW+FE6p2meaGk5l2VuNv1D2nY50/GzgymUSqi9N7aAtIy2McyvrLVfy/ZGVAVkhjGnNB16+pNJjibfmGO/wZ0dtP9wT8ogqe/fBYZFF3Teb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qy6XJQC+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qy6XJQC+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2420C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767128633;
	bh=mK5Nrf+opmjhNZyG9688leY6xIy/OgjILoFODQKfTeo=;
	h=To:Subject:From:Date:From;
	b=qy6XJQC+F7ZB0bb4VgffNhehfHCTbcC+ylYQAXHeBow17RUVnc3qypOnxm21tmMB7
	 jThtruMrjbWOus1VN56Y1ne7PCX6vdZHcJNCoWalvWF0Gem0l6dB/ItnMP4Lco7vM6
	 Mp4ouDUqe1G7fyr+Cb8W5q6u0ukJCNezJ0hul0aVWDhFayGNy5O4AuymVQR40JQ0Km
	 lsSRJvVwqIXGgnyYE23hszUI9qBhvV76/w+TzFEtP5BePFyWXxuMWh73OjSJr/x7fK
	 XcBVFQtI5VYH1pvqTCY5hu8gFdaC9hVITzdsNiEJA1hTBKVfTeUqSBM3iYRT9HauZI
	 9xxCg2MooR3Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91836EE01F6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176712863358.24961.17603614873445568824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9d7ffee39832925fab881a8b5c1cbb63f09558711374c7896e7302fa6a8bda
Date: Tue, 30 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767128633
