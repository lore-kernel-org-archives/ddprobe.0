Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E09218E91
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743101994; cv=none; b=Y7rWuWD4fI2eMCJmK/Xi0aBnyVVGGQ3OmTuHX64dCnVQYMPeOOJBJtVxsIIwqYuj0IaIBFfGm49j5SScvWL6rVaOe5ZbUyiksJEZO+u4AgCeoXf3DLt1Mb4Z5mNATKFxUXCZk7/b5+Xz4tfYpvBtfri0n702HwKFJdGsPQyBaXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743101994; c=relaxed/simple;
	bh=UFHoP24J59/SHOHxVakMlz6s3vvcDAYqb2+vErAq3a0=;
	h=To:Subject:From:Message-Id:Date; b=eygX9je/N/9t3DW1X9sdQ1whtU+s3Z+9lsKlZiXGtjUxkJ710q5bjVbbF8JIHStqXLRQW3MP2EodU5lQrIcEVLPtckyGanGxMqVIVepgtjjXlaEp99sxDsF2830rHqwjzELkOiddy7w1eHeWnFD5A2ubKTlLEjg6Hjvxul6TrLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVJSpCC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVJSpCC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF8C7C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743101993;
	bh=UFHoP24J59/SHOHxVakMlz6s3vvcDAYqb2+vErAq3a0=;
	h=To:Subject:From:Date:From;
	b=QVJSpCC5KNTNX304LNwTiwEOieV+IYDnwXfP/mEnr4AkRZ/ci9v1ooGdtaL6JSV28
	 bUdwo7IYnux9VoKZUeKw9Sv4KKdh0gJPKguXK0MoeJWoQ2FQK/BfnepUGJ45YQRwIa
	 Us/qOjE6DxElQ+g6gytZY0xPBJtJz0EX3L2qgluBAVk30TfpgmrVW4GgB/qztBLr2p
	 /J8Wei99PFxfwIZG+wZQ5oPZl3Z48uF+bel1IXu/SXqzIkBqo93dD/tkDcpBtiV34b
	 9Fg75Zbx9o5p0KuXCdqBeB5+I8veqNHD9A6SYKcubjs2lXHVva8w+0NbnRuMOVLAWH
	 pYNuDZPPEO3Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C289C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174310199362.25134.5243037014397519347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75764e8cf70f754429164c974bc526d49991fa2813b52460ec6a1dbd4792415b
Date: Thu, 27 Mar 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743101993
