Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AEFE33EC
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771724694; cv=none; b=GvJDH9tk5G4kqx+8zd6l4/ibMDq5wflj0rvmxKQ5/EBV8ZFZgxWHE3/7QPN7Qxo1fopW2gNFYWDKdNsosbcwjIsaPFabV5ThZ6CD8F4/OPkR9ap8IeW0jWct5qMG/LsP2BOVniPY0Ll1tRg1X3K+f0l7KDmw37TEA7sRgMBlQ9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771724694; c=relaxed/simple;
	bh=QctDLX1WvnRGl5xlGVWg1gviijGM3D4pF5WmpN9VyoU=;
	h=To:Subject:From:Message-Id:Date; b=jWJeBR8PSQaAgwvQoeVAT03c953+JvMHHAUvnPEGOCCOhZLC64Pmy8C0GrCigK6/PVJCcRqF042RYUiMgcXrNO41PM78H9sIQXWR1hM1dzfWa0E8mBpzwdly4tF26HtEAKW1LcnwFBip9K6L26shc7g8MI+Jr6cgQz/AMsVpz0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GH9TL/GJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GH9TL/GJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FFCC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771724693;
	bh=QctDLX1WvnRGl5xlGVWg1gviijGM3D4pF5WmpN9VyoU=;
	h=To:Subject:From:Date:From;
	b=GH9TL/GJEoUAMXV59S6frAaQP7qukh1hR1RyHFqQw7lsTvW5gY53weWUGFheEc61g
	 mA9PJg0d6Nu7JO0hM0J5mH9Fo2VYuyMux5uM94nlkrpsNhnl3Q/dEU0ZAGeDojmqMo
	 9e4mGwdaylsGRYc0dyPSngLBS/+f9Amwq/6o4xUM4mxuac/PGkjH+wlQM3De9PZpRf
	 hTd7PEzk0AYErxapC3BSyW7lcpjGzH4wbUIt3qlgexXP3SBSRKQSbJKzsRcFVBeuLy
	 pFieWAjd+Lut89gh1rgS3Dj7IH/fPiUzOzsOa2ar3oP51N7TBl+5XMGLLl8W40IpDO
	 ZFk/klBOejvlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FC8C624A4
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177172469358.31405.15927296597413646818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26d85f24958955b3cdbe38c0a449b4d285a9296033caccbce08d109931ddc99
Date: Sun, 22 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771724693
