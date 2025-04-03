Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6F82AF14
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743671394; cv=none; b=a7D9OnBKy9SOEiFiUV4Vl2rqP9HbymzLfh2GR6jjLvkZGVX5QoCjbabxQd/0MKFkwdF0/r+PJzHc9T0N5UKO+/YS7Uc7gGBx3fnvfWZFpWjz3TOu3jIiffe6MJoVjYQh2ogDLvn8AFaWo7VVJjxJGVrO/G4R0GBMSGFpUt2Z61I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743671394; c=relaxed/simple;
	bh=JZ+4EIakdaK5hK01BWyvEAbgq01eDDPtxjqS4FPfD3g=;
	h=To:Subject:From:Message-Id:Date; b=rSwObVH621vzulvxoWUke9jVfQHLdRTCkYUei6m8AXH9+ZINHSWLcpm/X/HiDWP79SmjN7bhtfAo8aya1AaMTJwNleL7u8Y9zWYIHv7qLWbfCJ6FoeQ0LppxvLsznMce01sWDHYl0RclF91fzmHQNS90XENaIg0AhcQzl/KN218=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7q0Zdy1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7q0Zdy1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACABEC4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743671393;
	bh=JZ+4EIakdaK5hK01BWyvEAbgq01eDDPtxjqS4FPfD3g=;
	h=To:Subject:From:Date:From;
	b=s7q0Zdy1HyL2SuaHpb7YtF4BL1Rz0vKmQ9O5NXePqVYRtObGomoSRaZoK6dIAgaTL
	 M8ahgpecA/gjuuHQyo9IAmf0BZArlA+F2OMF5/WIopWjJVj8y8ZLYfCrKpS6kB2M9i
	 wXkLqIcv9fPUTud/1OiAroYcyfYENn+0/oTtbkTWS3dptp/YDN6kZrDyVJbpwRinIc
	 +0M/KraAX3XrWBAV25fidmuLv9JRTxk9MT1YHUYqqeNohwsjTPMyQnS0d6b/sKsuIo
	 xVKgDT5+TiVERvIyoLRh0VB4wyVlESCN4bdWJ5lb6cUxrJB68tLAekINh8ls8RUJo0
	 e41vGSE5OHBOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97099C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367139359.6418.17968973680786936299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78067b2c4ac2577029758462b728d08c4849add923495ac4233efbac831d0078
Date: Thu, 03 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743671393
