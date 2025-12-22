Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2F0320CD1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766416434; cv=none; b=Wa6B8LV6O4Vv5EdZoVHU62B16Jrrry+1zppehOvo1Ew0mGVqXFSkiStxfjIfDuLQJeyJhZHsUZdbL/VJPb45DBlapRDvWAgu8jsdFiXFSnX/QBrawN/1KxkaLT8zUv9QVDVSTwrV5ajJv7zhQ0VvFj4YNuVzH+VCv0Cw3EpiYhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766416434; c=relaxed/simple;
	bh=BkUgM5eOiWdW0l4AGqoT2VDzp64ZBX6y0TooSVIqF1k=;
	h=To:Subject:From:Message-Id:Date; b=mz3SGJSxGfFoWZVkE7/pQ1nN3wiPra12QPYmIdR9vXyVDAdrHbHYOKwRn+mrx3NanV69kTIobHwE8jb54EbGZbVGBMIc0OKSxwkq4Y1PSg14M6EOhFVXLISZA2nZXSU1oJvAoArak3+V6AmDKJ5j6J5nGfoE6/ZybW3ad5BrWP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtjuCgzm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtjuCgzm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0681C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766416433;
	bh=BkUgM5eOiWdW0l4AGqoT2VDzp64ZBX6y0TooSVIqF1k=;
	h=To:Subject:From:Date:From;
	b=EtjuCgzmKlBidvcNxKgxEu9NrsAtMryraJ1ZccB1DDdvPfE/kCb89Yhmypdc/MbCI
	 afire8PuAurSafP0fC4txzXDi6oq33YkMPA5f609z9t3ZJhrSFTNPxts7wEn1hK1na
	 pvQ9IU72l/h4uTMjXmDORX3lVwEaZX+d/D6QKP9PNgUxEV0lxw2dN74oDtq3sXeTi9
	 naF2A6rXQ+a3oBgw1jbKAGDv3MmvqB2+60iBtwp/7eBGCkeanfDAx0cKz0GgiIB48j
	 bF5KI778tpF0CK5LisOa1HjqIe2E95aiAoXDHFL7BCi8hL/lCTdHvXm/F+0MzAl7jz
	 EJUN0TI20kZUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD6E677E2
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176641643357.31743.3816706061463001888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f894b761dec3ce43e05bd209467727123a5f1639bc984f4b9d26c278340cb75f
Date: Mon, 22 Dec 2025 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766416433
