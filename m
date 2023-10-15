Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51609185F
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 07:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hX7t/j0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C832EC433C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 07:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697354228;
	bh=VALUeyTAhBVtP8TIjKwLEeJKu7M+1P0Zz8+A3DQK04s=;
	h=To:Subject:From:Date:From;
	b=hX7t/j0wSyBHOFEVTuW0WN9O825AFEulbxd51ElQqnuvwrKW6eCXFDwUmXP0y3SSm
	 MxOoJ6AJwKt1isb2yXKjrcjsRt8VfBS4rYiFKmz0d8yVPuEf8/AMTXW/yPk5jEvn1N
	 7FytiSHLIvg/y02BbXt3R9k/rlfvIZ45ZbL41aZLeQR8mHHwTKbKIThZ+KCf75qPOd
	 xViC3BkLWLSdrrp0u8CNO5Me5FDyzI9eXkV0MZUmc+h14IoNx1xk0rQA3I3STc7jsi
	 iHrqacwV2QPlIVgHSSpSOWAE1UIsMi0xU8rdSmyjXjR+Zp9uD5/ziHL9hrWcJffWU4
	 3ZEka5L5BCCSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9192CDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 07:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169735422868.10873.16907407158116984514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b95cb54889aaca22230901b4813e22148840b6f7de5bd6fa399377bd92113ca
Date: Sun, 15 Oct 2023 07:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697354228
