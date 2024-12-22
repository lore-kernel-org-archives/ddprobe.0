Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3150C14287
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734833754; cv=none; b=MYD1EmmKZHHyXRQjRwTyvyLd19bgVq13dhcpynupWTZZlx/AQo75Iw76MrXcM7qqH26s4w1r7wyoiGYxH4CKUBl3hEOCgsF7BqiMtYE8TNdiSHUkesEcR7fwy57uR6op8RlU9dB9UiuhabKetqJeVXvqbuIuwhwLPOJtQZ8ZVd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734833754; c=relaxed/simple;
	bh=G45lU23GRkogfZyayAAt2MpLTTrU/IjMliKbFz+2ufI=;
	h=To:Subject:From:Message-Id:Date; b=Y3YMULwbwoP0FCPNKJfiS7o3BVr3qKne35VnbfMOZEjgU9G8gTUGXDgLUbmvOSwMV3ii1KsOzVBj7ZNpFR6D+RXYlb6GjFVe3+bgpbe2UWK4n3GCRmOtxEwwPcEK8vQXAblBNxvPTIX46N/NFRoiHEfW1aHymg9ySho9XXHBG9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oo2LXdS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oo2LXdS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D76C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734833753;
	bh=G45lU23GRkogfZyayAAt2MpLTTrU/IjMliKbFz+2ufI=;
	h=To:Subject:From:Date:From;
	b=Oo2LXdS+fVgwzpRJ0LlvXR4/cuDKRh2WTQ8LWHs2vblnN+yP8dwBYmTBi6/DLNM+i
	 8Q84tYou2DFzKl8hgZK8zE4rEoBHRU6iG1KpVHYj+/cVysv/9Wxmc50hfkAOYiBBjk
	 roFxut8351HGG8BFFeb3COANCp8q8hbMXjaR87I2qCRC52LtWDXN93V4gjBLRZcD62
	 RVCZLqclk6jAIgfhWH6hDBHZ1hweAYgzyHpYZhUwc+1+DEP9XCWHDTuyXO8ashtWlh
	 7Lo+zITrpZR/LecHKsYFmp0oER3RG8G942TNGT8qUCchXbl/WEE3vN1+ajOaAIeN8z
	 GAd2HP7Le3qgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F608E7718B
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173483375362.31980.4499379850787548017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69facfa6bc892c9b25d2825661d896b19987f619b6d6bb90bae3c78e5236cacd
Date: Sun, 22 Dec 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734833753
