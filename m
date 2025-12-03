Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272DD2EBDEB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764754974; cv=none; b=fabiFWH9kP/NjdQu0lCDnZxLgtLa+ykS/smZs66BRyAi7yQvwnYTsKYezr/Fkzbt/rhm8ViKIW8SawoyEdl69XSfk/CZ1164+/iFc/j03XMUqKGCzjUZwzRTTLD6LqaH7Hr3i598tpeD9JQMFgMjqoqvf/uZwbcAsXeK6+Kc6xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764754974; c=relaxed/simple;
	bh=NV0rpGXuy6ZcF0Xou+zrHON0Gqk9swbE18ytV9O7v0M=;
	h=To:Subject:From:Message-Id:Date; b=C+sMMirUxYgFFKOT1g4IPL1JRGb6n7p0z6wZl6Kkxk1LUeg3O3iB5VQm1DVxEVHrGrv6axNKmQW8y68VGEs7PdscT2ybSRvoPHY+UKYqqYGcTvO/Oz7beE6bK2K5CFUUvqbYs92pHI4J1Ysyz4cQQwJCpZsHBHszbfEEAtb9AOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbE5yOn1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbE5yOn1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD21BC113D0
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764754973;
	bh=NV0rpGXuy6ZcF0Xou+zrHON0Gqk9swbE18ytV9O7v0M=;
	h=To:Subject:From:Date:From;
	b=HbE5yOn1rgOr2xQ25Oyo3TrvhwBvbKcrwr/7Uxq82BfbWCMY2s3f/MlxGr2Ag/R39
	 b3jcJCDZcgu0tUwkyAexUifnW60tFge27t+neA0JmfBhcwz81LpKWFnHcEIIIZl3eZ
	 nRCjD8P7fFXmf/cbEdcyWW3nqbdHH9WyZEN/AqKkiU3sIQg8+8ysLgQ1dWe+Ugio3B
	 CRuNcuUB1kD3myxBqJYepEn3qU/62mGAinyHCf07nY6/5FDkcfxmFJM45DMKkkvdfb
	 V/+tpGoTT0+ARsJ0p8NyI3oKYn9CabGgC+2xiUdI8ov1NokD8MVwZdvz+LkZL4AhMD
	 8an/qgn5nQdXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986E4D12696
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475497361.26022.6887326839107596888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17cc32c6c41be234ea6a64af3e5fa690c517fbd5468545725ce85212e752c2da
Date: Wed, 03 Dec 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764754973
