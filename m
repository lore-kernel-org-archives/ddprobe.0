Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0764723C38C
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754425794; cv=none; b=Vo4kd/BtJ7GimWSYD6+Y6wq4gr8BMuiEXy6P31o3+JTx8U4GdhNg8wHGc4QRm31Czr05kNVeYzfBQofdt731K2/mU0MF4zKxg/hkSZcXERldKI8uxy9lCSzF2AfYgM5A0PTSLmbdEVDgJ/tEbbu0eMhm0GAPcHw26Oe1IXtKQTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754425794; c=relaxed/simple;
	bh=LF2E6onLZOQeq7NCN4+SzhixszYKB+24xv+QR1qM1vo=;
	h=To:Subject:From:Message-Id:Date; b=uHzekkbpC50TK1njvKDHvQUQqDzbojyhYdL0DIAYP7VQ2JsvnqDaGLKrX5a4ZZ7qjM4trN/ItXm1Brg2QhlIc4VKDpJZ9kGbmvhNlYOiXtc+CuZOfGtvIRU0Yp5SULU16w5AVunMUihD9nz+gIp9Dr8INwt29UdZMkD+Kj8yT8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FblM+/Da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FblM+/Da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF32C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754425793;
	bh=LF2E6onLZOQeq7NCN4+SzhixszYKB+24xv+QR1qM1vo=;
	h=To:Subject:From:Date:From;
	b=FblM+/DaCJAXcVFIHUrjxLuzb/tVTzAgpFiR6CDQ9xZUcf5nB+W9qr8Rr3YN6tEul
	 84l4PBPGE8PhrOpB+KFnP0Wp/soKfqwdlxEkVx82fIXjYy6O/J/z2tdyry/QfjPEIW
	 Pt7PgkT6XXo2QWK5e1ShzmrkMqhuSoCcvQ/qxVzWqbLii+dWCJ/fbCvkikb8rtwTnn
	 3KaJXAJZp2fAByhCGkbrzD0Y8wt2pNSLic5z7tDthvTIaqaeQkidka8bqNffduJQHg
	 htIJKJudv5MNA9nB/2fIMEfyM4EQRgT4w/1MfL+A2iaTplh7xoQa+KnR5vk25kAaG6
	 +kfGx7lIgPyVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F245C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175442579357.15610.12070012618580191667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de62f96134154b41312d93868065a394f60c44243b52ff10de88fb0b77edcbc5
Date: Tue, 05 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754425793
