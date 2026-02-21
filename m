Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C18833987
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771644894; cv=none; b=PcEcCQQxqWNmr8oNspSCuU9hHMZZGbQflb2hE8a1yXARxJ/j5q2NHUL0jc7ZTGsArA41CgQYuW5BUm9T9DMz2g45ghr5FV2XNfVZxgWRdR7IpUFXnQwTNMcLLEZXANDWxvHIRPVBt61HdE9ZNd3oXCE7xfR7Vyt5bpkuoa39NTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771644894; c=relaxed/simple;
	bh=pyaNeJyrlu9jvfrW7g5vQ/K2+xlPJist5MX8wcYy1Wg=;
	h=To:Subject:From:Message-Id:Date; b=DfHMIMaUrWHbpoxC9WwK9WA9lPP2kR1UvxopyyCo0VaGG+u2rTpn59yD8C6BHRLEeFYZpp0lguSfWQ9p4Bp8m7vxNApat4q9PG41lyCA/c79RmnpFsIZHRw/fUy4z2avx3/QDiAV37j+wPJsJnLBuxnOBwqExtbxT27um2KT/Ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dtgJSGgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dtgJSGgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C40C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771644893;
	bh=pyaNeJyrlu9jvfrW7g5vQ/K2+xlPJist5MX8wcYy1Wg=;
	h=To:Subject:From:Date:From;
	b=dtgJSGgRQ4u6xiGLg/yIMa0sBaQvMOlfZOoLsKEIBbljmkFczDCZA8HkW3Bq431Ny
	 X6u0curyrwu5CW998EwgsixY2O1bcDTATKRdURxy8voi2BmlD8V526RwbK8UKZr6Nv
	 /3f2kwLzzmvb65f8eljCwHMeaKLnKcANvRGSKN6zyxcxySwBa/bSZRR7T4CfuQex0J
	 be7JyIYcPXwDp6uEBMWmG7hxaWaGqbHFmEYm4yvm3t6yQJROkKYvm2Q4UMNkkzJEI2
	 jMgiLtLYJxnWS15rK8JXY4Jkmp94yQAhGzn3gKuu4y7co6qlU8HlgYYw1J+yPS+/bH
	 NrBeGMpWq0RSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB5CE9A049
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164489358.23865.6168693964894322566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b34261941ad4e071b76c164ae516dbf2d8f3e3af5128342d8e8a708cca31eab1
Date: Sat, 21 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771644893
