Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CC01D55D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5QKG9Y0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87BE4C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704316096;
	bh=KHojjagAyGRAn/K/T+v4PqVykqdnoSsuRdsQI63zDIM=;
	h=To:Subject:From:Date:From;
	b=J5QKG9Y0inDli1X4CDHFFbo8Is05YZMwpXqwbCxrkXUyyB6jIeqFBvU4tErs8N1a5
	 I42klTK6hV5aZFryNjqnbFGS4/703sxtBlmMeGE4w1N3Vtd9XxLgBfD3PCW80MIW44
	 V32T+Eni7Fne59JZVRZyWL4mURsjhJLWJ7wvOE1QFPOx6xEAcTl4rEqh2v9bJwPDYO
	 nvTGlTC41N4GcXdhnNpNd/GimxqNBmJw0EgAjW59poMpV7LTCZVmN2XN4OewLrhVxi
	 +KzqNXVxMlen8UXZ+2jiOp4WBGgbcCtvp05K5TpYSHZE3TSAd0zOILxvsNTHBN0VvK
	 M6nCe2fPuJAYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64C78C3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170431609639.425.15396146574222797396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768472c98d9396e8c78cab624553a2c38633a2cea57c973d5954ef6d120d17d5
Date: Wed, 03 Jan 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704316096
