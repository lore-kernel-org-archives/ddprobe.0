Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AC117333F
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752472794; cv=none; b=ml0goY/mwlHJYC0NiGpHBl3QAMX1+5EE4aF2wK9T8lrCv8KrpK6A//0DNd67RBZPrZdCd9X7h5/baZvfYszzmst+UybWJNOInNGhvQ4aGfZ2nlEKgYXmcgKcYh1kC/Euqfi85Go/iweupG0P2YW2FusPkU2FBypRsfm8SReNflo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752472794; c=relaxed/simple;
	bh=GV/6N4flGtvmS2IR5Rewc6AoJEPEyBsSMGF9ayFAj78=;
	h=To:Subject:From:Message-Id:Date; b=HxiVGm1IyBVrc5ZFb7XAflqttK1C4/2Te22C6VcPLJV+qw8Ysf7YN4HlKl1mUzclxwuFtLLs/TxC8ackrGrAZk9G20oVkv03QKEe7OtoupPo2CEjINFSYO9GsVAmJ9BB9tLbUoqDGOVGOuXJansYT7fgmX7PhOhs8pI1BwFrQb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JlRDoJYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JlRDoJYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05F6C4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752472793;
	bh=GV/6N4flGtvmS2IR5Rewc6AoJEPEyBsSMGF9ayFAj78=;
	h=To:Subject:From:Date:From;
	b=JlRDoJYUmuYAy+wIHBb/b4o7rlsbMS7xv/YqSuiRGwBxMmjb/AaUng83Vs+bjd2vc
	 /OWJT5/Z6VIjcu1DYmlQ+0/bXvkfbwTWYlSwhT4o4f9zyFW7mjUkEbRbFFNl/z+Ifw
	 AYXHRHnqFtpLw+7fl74Na70ffE4AgZ97b24MefnMcGG+ASAmry5fpzRFXs9ZkyVid/
	 VFS5nWTmlWyUHTn0LtHf9qTMn4OexYO4lEtAzBl8Wje/Xv0rVb9qwh6qofOkANm7Xk
	 wy57/8JgCgvEN6/k3bnMgIlm8JngfgXr3jsEdl1xbE1WM96dO1AdkUZfh/gMxNG7BQ
	 ZjflbUGU5wToA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5CC83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247279357.8297.5218662064015808235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f5e62c3beddf863f615f4c8117632b861f00456e61734237637debfe1004a12
Date: Mon, 14 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752472793
