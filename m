Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315AF360
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743372594; cv=none; b=MCxu7i8r8KtEJIi11JAz8wIyRSQVLUqvRANy+L+Zv+KXq/QnxSKhPE2GqTJLN5rTvP4BiSQQ4SCXzXioPg1iVUZV3WMmPfAFW/BfIDvq0EKSioUHOftXKxP5FD+FcRC8xUMiE2rUKX7W43uM6x5oftu10ZXkjdeGi6/AYe8/B3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743372594; c=relaxed/simple;
	bh=nyQOWjMWGx/neehLv92wA2HXpe6KZJLdkXx6aHmfT2U=;
	h=To:Subject:From:Message-Id:Date; b=orePMqvPEQPhMpK70u5mBH1qB/dEQnibaNnABHdS/uF7LfRotxRwpHYfmLelCbJKllJrQu49L4yJMf1h+RS1mBVEWQLI9Y3WxD7zwhfzzBpZuolQok0lJalHjxSWgYpr33SG3zIW6YqO1rh0f2pxrA8KiQw4La97qQwPKECTCO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+hQqfxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+hQqfxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D27C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743372593;
	bh=nyQOWjMWGx/neehLv92wA2HXpe6KZJLdkXx6aHmfT2U=;
	h=To:Subject:From:Date:From;
	b=O+hQqfxlu2QGIngHIT5rZAHYoaUO/4maexn6dNdTvgOqHxaDGAOrMR5WSpE0oWgta
	 ZcnK6kkslKBKFZtiXpTRcIA7zLBc6tpo0bQEvYVYVJzje3IHuxSQ0fPAc4CRHSAiVO
	 1DW9KHniNRn6DbwudF8W5yShax/cQ0o5fay6NS94lyHUudhEJ5ZL0MeJq9zRfpi7SG
	 xOweQC8JYGZsxLSQArIptKN7Ocrzjsz4rP5zrIQ53lHHSAP10XwU54hGj5LDEVxS6o
	 FAAyXH/18HW5pbe6HNiZz8PBOWB6PrUQxMfn+pBaIF7b9Pz4cB09phjbmtyg56PfWw
	 /Tuer+R2tHVqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FCBC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174337259358.20655.10104026056765207216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6b3af711d5877869022020a06abcebae8922522613aa3007f8fb8492463ba3d
Date: Sun, 30 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743372593
