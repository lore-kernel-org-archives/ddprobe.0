Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 544432AEF5
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743940795; cv=none; b=g6tWida3zTTrZXelFj6tgMVWomE/nXwxg/eYswKvxG47+OHGmyZbfyHwSa8MryfhYx6faiH+K9NOJJXnZ6C7raCM6YrTWz/YnCybiSu1c3hNFhfQQJIl26s6anrouNPQkHdSZtBRRDhkM9Dt4rRSKCbPqr/3iKOK6S6ApfM6L5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743940795; c=relaxed/simple;
	bh=EnahNgJMyDn+TYyMhq4RmKLTDTYE9G/PPMcFOGDiBZA=;
	h=To:Subject:From:Message-Id:Date; b=oBJRxxFGw4/y/eyV6xn81AG4VfhF/W5t7ThHNlml+I2TDzvkcOgOudOl1HRWkgjAEvFPpMFtX8OFB0t9BcR6v5WsLaX1V7nK+eeVkujT3dZPsnFc9rM/BjcnXb9TXDyaxJkVHi8b7z+76qzA7lLVhPU7RgJT3Qh8RWJ++TrRPrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKM6ts+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKM6ts+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3CBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743940793;
	bh=EnahNgJMyDn+TYyMhq4RmKLTDTYE9G/PPMcFOGDiBZA=;
	h=To:Subject:From:Date:From;
	b=pKM6ts+6K8JyLZz0s1a46ZgL1FjzT3cQR+XCgd7tQPIn4jhypDxkOmKT+GSwUsFW6
	 npejK+tizR1WyfjfTO3m5ddUD1N7CqyfnFpOnE4/gHcyVF5AyoqnMRJvULjg2blMNK
	 SooqfcWNbZSXiYDDJjo/uDtMvFr2dCahCjfJ3KKQ69v+Ym0p9J05hYvkxsYT5yY17c
	 0higXYEsvL3PL9LgYbjp5fI0yXICZQrD6HcdOFxootAsogvb7tgBX69KM0vE12VLdA
	 wiZUAW8LtjReNzRvhBJz5RoQxFvt09ZTI4DpOxPzDLq6hwOf9h+eL/6bIWnk+J9A0b
	 Ui6mEaXEzUThw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97572C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174394079358.12825.339506626922263396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10bce623f581f2c0f874723567b60f5e90f199798cbebad5f8345359a41b0e96
Date: Sun, 06 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743940793
