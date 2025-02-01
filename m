Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6941EF01
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738420554; cv=none; b=RgGv/voBeUZWXUW2CWCWEGRwmfMpIzpoXWW/jaem7x2rrPo04Rysy3idkD/CGsigBPTxCOK2plHGp/t7ZDtXEFjXPmMLCXtbPOeW5WlPAz0bTiMKRb+RBlNlXfIu8g4BPq4y78AYOTkVyym2Kr5dkgkT8d0h9fUQotC4ki+oGxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738420554; c=relaxed/simple;
	bh=by1TdmonO7GGmmmZOnhkSZ0dUBVInGM+x0BkXF2pwIA=;
	h=To:Subject:From:Message-Id:Date; b=TKZ9GsJPW44Mqr14kOhog6oO8D422VuIZkwpBGYC0/QmkCVYK0/UaabkiK/1zThcXLKWhUnGlx30I/DeQhQldmp0Wm+k5oKnl19ozEUgVeydwlK/vmYPl5XBu7W87KwDRZ9Uw4xDOQyzUd6n87qXJJOzunumDE6oaXk2EQuG5yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJB7GctJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJB7GctJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E56C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738420553;
	bh=by1TdmonO7GGmmmZOnhkSZ0dUBVInGM+x0BkXF2pwIA=;
	h=To:Subject:From:Date:From;
	b=DJB7GctJrbVMov7EIqi3VwFodYClyg+9vG8gQXW5j/Wgcs7DXz74QnPZ5CVnf8gQa
	 NJbl++v/SC9WSa53p0uOiiNmx9vlXPAVgmpBvvMm/q5yXRYdc89CKjwyO1WR8TXrnB
	 /+YlEGS4ZjFKDVJdd7HciZX/JNElLt3uhAXWbVQjktIMu4bIfPigoPzU6VfiyCHRkh
	 QSPATgUjzTlXjGKGl9Q+c6UeC3PFpJCIKxsqnCSAD2eE3QdyzLe+J83kP4gG/7CWtB
	 gQ8JCQsGUO/tDbD0neorQc7Fg7ffSwet+MMMsHjb2lLjTrD79tBecEvv90FwdV4p6v
	 hAszJW4vMl9wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EC8C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173842055361.16008.12081436566892745818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b5c99bc967be7941b3056a6ce963bc922b21683f2e63a845690e86e956d498
Date: Sat, 01 Feb 2025 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738420553
