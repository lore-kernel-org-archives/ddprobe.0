Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344E2186A
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724487954; cv=none; b=Lq47XjbrSxitlV0BszY53lOdQH12+/pEqT3DeKCvxFWMDYT/6JRayySEydNrtQaZu6yeGBszDyM+VRq5ISJzxDS85i1Zoiu5xu4M+xGGSBuEyyaOub2cpRLKtMVtdw7OzclY4oiUlyZ8w9z04Z8RQRhtnCTEWFMUBhS+GsP94rU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724487954; c=relaxed/simple;
	bh=+ZOxZl2SxvsL0CQDJ/M7T6MxP8fnTxp0bCT34s3HEZ4=;
	h=To:Subject:From:Message-Id:Date; b=qHAw/+T48hlFCccPzQnerMaZFVHvoj8b0t0d6vmC9JVOiEBRID6aFyt7WaitLylHimnRLDHdTsoktlvhyC2US2U/18LUiX1l7A/z8G2L2hQ68acJJPC/fFZlPY6O3KtOBkB75p7jJVUFK8MNAOh+DdBlqQKzXVedecbOtqMIZYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Noh0WbO6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Noh0WbO6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD276C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724487953;
	bh=+ZOxZl2SxvsL0CQDJ/M7T6MxP8fnTxp0bCT34s3HEZ4=;
	h=To:Subject:From:Date:From;
	b=Noh0WbO6hPUhIjsQGKkXz0LbALENdEtsbRz/qouBkLTlprdfbZoY/l+YuxBmH8F7u
	 9CPfuXV2cJRouw1XC5GIPgaMuPw3TfUizSx/QTTSRZfwj+gHoSB4wPZBtqyH12rpiY
	 /cour3P7NkubVPPOJZT+8NaCE1kAHte94hvp4a3hxV7qtaQl3FsZ+w21TL5u5ikSLI
	 Lex4WF01w4NzPV3BMdOHg/9ulDPei7mFkgYaa7CW1/g71MypVxRQc3oJ6+8bnKc44C
	 J6+hQDF1OFQUJidFHgo0Y8eZdWQKt/kALOiKTLimmdUEP3RZ9Iqw6SR5GzfNFmy9Z9
	 tMS4hOSDmCYvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962D1C5472C
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172448795360.21941.5296700440784293630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c49ae2a4ad5f6cb3d5d1cacec61afa0c83840718fc897e0f06d3059307cbb0
Date: Sat, 24 Aug 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724487953
