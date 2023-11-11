Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298EA1B27D
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAgTX03Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 919B1C433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699724896;
	bh=6QTfjB9t/cO0Q1T0Zm7bWcfWi8o1DPxz9M6uSqS70W0=;
	h=To:Subject:From:Date:From;
	b=PAgTX03ZBbfFV32OQGb2AFMyynXADevn01U/BMq0tiYDiyceDryLOzlIk7bEC3bwg
	 2PcbsUK8YN6X+swuwPw42wgLqNFbn6JeSvDyJXKIQvAr742gmokUtiO8LvJXY2IvLl
	 ufuXagWWkNzGsPQaXrIkw3XOsXknTQG9zqcaHRtXKlDVRKu4Ai9ni9SGXOU5m+lgH2
	 4C4h4K3r7tzoRhhPEe5TlXo3wP4duyu4jeB8FLDQK2IP8wsWF4InhckAUKmc6ITAja
	 GmK7PBcP1fKNL6IzRiBaxzyewY5Cf7AqHAYGm/lzv2saNDQ0QsV3NpgC4LyQ47tNOX
	 8IvkrcX+481Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EC92C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169972489639.1359.15222482776220921641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0243e53494683dfa1aab07069afed06039fb9e697b0d93870099f448c34776e5
Date: Sat, 11 Nov 2023 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699724896
