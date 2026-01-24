Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AB223F424
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769266434; cv=none; b=JdQtWhbzGpWcJ7C5foamCNpoxuC4gjajp9smsMvHQyuKbilwlN+wvkgHDniXDTgmq7HvILFN3031teWn5OgrNqFWQHOvrY/kulTr3rA60Cru53FW90g0qaDVq0AUK5nV5YjAZt3Zdb+FN7KahyTv23aZBybSuGHFyvk9EDQVaS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769266434; c=relaxed/simple;
	bh=/DESl4DuVUetFfNQ9AsRzAytL5XJ9saTU/kBXF6nhj4=;
	h=To:Subject:From:Message-Id:Date; b=mL7loXsOz73MwIk9MrXQ8yvDpBc3dclNk6BhxxG2Sm3xkOqDLtqTeYEUIJ5SlFziw0OBt8jQ1qrzcJqyLyyuTeDfER3zxxClETFH2P34izcnN/dQiBEW1i4YaMTOUz5gET1dgI/1xnBr61EMTg3Il9OAGkz4ud6cKLKSFFGA/tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sM3lKVSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sM3lKVSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1458C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769266433;
	bh=/DESl4DuVUetFfNQ9AsRzAytL5XJ9saTU/kBXF6nhj4=;
	h=To:Subject:From:Date:From;
	b=sM3lKVSSotzMPgoDY3TiFezWTsiedvLs85fM40v3HyBbYLLN2yxTrCPLaSf5vmqw1
	 gHfwQqBiXwU2BJussBBpka1gLV7lKrWYt4hxOkTdU3/77tQWi2WlafbGeKrGVEOVoj
	 WKg4kPRqzATcC59AtUrSGdkfNdfAU/UmCwjbkIqYyrADea/fRE7EhFuqQUqNKa01OO
	 Rkkkl/zmtRWCyWwOq5aD3ODhBNV/yEVe9IHk1ZTs8g6DN9YUGnwW6sWUPlANkm+ZIt
	 w7tYsjQqIYocByk6Nn4CWqVsxaakuPjpWzqg/EtQ+EYM8j7pjnLdO8aoszaIXFDQSd
	 iI4EODtL+TJCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EBD715EC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926643358.31208.16272531451325169425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215f9b713983eaad34c7d1951d2f01cb9e255fbff157affa8b92b5caf200e37f
Date: Sat, 24 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769266433
