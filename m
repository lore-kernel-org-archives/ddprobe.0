Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F0812B93
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748102394; cv=none; b=X+pfbAcNa/Szz3IpVB3U1EJ3g8Nw5N6Z7w9nHJgEM4daQX5gZMUYXhUws8G5JoLPc9nB70/y104EgfO4jgardLuPbPatBCGhLjfKxhm3exMRBB4NUuXkodxFLlaxQf+DLt+By8CyhRzQhgvy8fVzZeyq1t0wS4ACgtdYgtSv/Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748102394; c=relaxed/simple;
	bh=TLn+2Ssl3RC64U4qT7eu1R7uA7gSk3U5c+dTokarTaw=;
	h=To:Subject:From:Message-Id:Date; b=GFrayVs5JNhwLo7AbVrmBz0InKgo/C4PNloh1lHYORjTREPTQrwo2B2TfxQpmyWK2Tz/Iu3DhsRB6B30OMaVV8jaZcJAQJX7Ef14kcw9Has86bKaG+6kxQjxqCR1a70N4aQ+w9NyJ6yMZTka4cvaDhz2KNu5ACQrxh6WbPPwNjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWn0DUB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWn0DUB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E46C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748102393;
	bh=TLn+2Ssl3RC64U4qT7eu1R7uA7gSk3U5c+dTokarTaw=;
	h=To:Subject:From:Date:From;
	b=XWn0DUB5MOOAl71i5gSfZNV2LGbX+ROFMBqK6tU7g0seOhjrUTbGUZ7+JP+soh9Hr
	 VylEjTNVpc9QS0EagbofbdSE6ppLnRcFuAhT5zd+J6boiW5nq71zv0Bo/VkFy2aKab
	 K8epebbufjWxpHfNTQvLJMPQXj8Css3pWQq7lB+6ay7rNV9icILOoIPh0loa4NPCMj
	 WY7RjKjUHWlWeJER9+ZMa/VGapT/T0AbbKejUiuFeaiiLUkg6jBkpflkV2Y6wsRnGz
	 lDkrBkt1riCWyYR6rUbNna6Gmk+jlbCeoPwEGJx9jeFtBtyM4bIn5HYnNSaXT+kIcO
	 Qifc3klB0FJPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD5C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174810239357.19967.17274574730067135558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab2586023cc3592f41b5daf8dee84fc2bd247bfe739f016b4be02f4e0cc728f
Date: Sat, 24 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748102393
