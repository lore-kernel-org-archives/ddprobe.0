Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362CF4B1E65
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747354794; cv=none; b=ENLOw57gczkUC1ydKMrlpMtXcePXe2L8qPZA3MHH2pqACFt4RTC2MqyOMY1JTFJdioXnsEBVONxI53JSEyRR4TQG66UzKw/7Gh6r6TPbWrjaeDg3K3Q39cj1S71eHYhCxf7Dfb7d6cMwk8kazl7HKy/p4G0mJAg+9MYmNKdTChs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747354794; c=relaxed/simple;
	bh=JWmvhib/+JnCkK2IykLiCuO9iWi+ac5Zs7URxpq+6wM=;
	h=To:Subject:From:Message-Id:Date; b=aK1BrCM68BMeA7n7t3gwJXkK7D5+/jidTVrtsTqHbt17PkjDv677wraDLnkyYFFdxZMbqKe51ugSLdsv6WthOOxC7O6w2bLfkyaJCwUVOnorD5y9S3psLN5xNlv7oYERjcObHqyx2HGWQqAG3uX2PfnDcTZTaP4+jcsi7uwAUm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdfhHiAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdfhHiAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46F0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747354793;
	bh=JWmvhib/+JnCkK2IykLiCuO9iWi+ac5Zs7URxpq+6wM=;
	h=To:Subject:From:Date:From;
	b=jdfhHiAoN6mpeNxKRiRceCr340mmoxFgkbxu0BtvaW2P+3I78X7ewyej8r+tYgLWq
	 Oi+Ky422HOb7orXwFIsEFt1csVi1qCb/9STdihs9YP5aHMzVaeZjulFL3U/4Fd8llL
	 wGjB4ouibrfcPQr5mIwU8k4FbV1MPqBoZjFEXudXWdhCDuaGufjnfocayZpj/xc3IK
	 36TIggVZbT0nv0ddbtNrjxwP3t6qtAkvjWPypJzWFJ/VW3cVXPhxdEhaApzkDk/Pbq
	 YBBcgvqXfub494gF5zJFF8ATU4Q6rigPhaqY9TYQJliLMp8pjVLCYe/JBUomDmM0Dq
	 A3rvUjrLn/RLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EDAC2D0CD
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174735479358.5573.7488871933313813950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8fc21fc0b8a421874672be08a0b009c6fce91e64fc745a63ec91c78ccfb214
Date: Fri, 16 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747354793
