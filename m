Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF6B7081F
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766634834; cv=none; b=u5QIzgXuuQ7z71Jcz8tv0zrLmk9PyF5dbhBVanzAWXLbPe8WxWQSTsAuCr1BeJj05BMih3UJO9euReOGk9il7Owh0FMqHQNSp3dDKYAN5kAHIu+4xmO/YHgWZaeB2UrsmikjGCm0fRZ6snqXPfXuHDgGn3J81J9rSXpG1S/a8kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766634834; c=relaxed/simple;
	bh=OO8pg6JAjFxNlFUjV/nXIZHgv1TUq9DADYw+nhtuJi8=;
	h=To:Subject:From:Message-Id:Date; b=GGkKkHix1aMluRLigulKIV4MBqA68LdEgK+SWqUaZqmvw7fRXWtgKhASdfPj7CoOBmtOip5y9Wv9bfh05MC/FMxovxEDi/GTUAhmwHCa2rN88Qh6CRMburEYR3OfgN/IicYBPjWktoNK+agDu7F7RCUO5YQff8rOAf31s8GKZZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RS+gxwat; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RS+gxwat"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39BCC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766634833;
	bh=OO8pg6JAjFxNlFUjV/nXIZHgv1TUq9DADYw+nhtuJi8=;
	h=To:Subject:From:Date:From;
	b=RS+gxwatCJwMOoyVDroEyeXJ0hqKg58588kdlxmVpUAIREtOYGfvmb/HieFXPOe/g
	 +KjiMX2FsC6K4/vvmN5H8Ufs2MXWg7B30C0Z/6HZgjVbCVs1lWBX6sk8aOIOQX0eXY
	 dACJjOkFsc7L5gCh7I6ZXHFdvDfaNKIVi6sjgRjJcPtx48ueGbHQrj8Qm6e6ugx2gi
	 P5/3/Zt2E3Bi92tpwqhTI8RotMQysjlhQVLGtBZ8+AqeotDe2w3lIy6/1Pn7uGaCtu
	 i7/w08yQCPtJrUQwCdAFTLhXBAl6TcYWooHQHUzZOca1S6FfwaeHVRlkIlKel1McVu
	 gdPcVcFRD6CAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C88E784BD
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663483357.5329.17174541305848056897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5bf93918be097e82f479eaac31dfcf30a8f71f07246184e09b0f38856f17138
Date: Thu, 25 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766634833
