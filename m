Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F981A6830
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774322694; cv=none; b=PKQtvmAotz5pxib2fZyDOtin7zN4/9fcX/Uqb0RFV2vvlaSzYoJsNmkNtH0ujWzxVnkzZpqcVCfHpRuXAoUq/6e6wSfB4dO1yrlrV6JmIIZ6DIofZVUqlsAVw/UglhWkEAM6ZTPp3KcNZruuviR5WDp8lGFnemeqvW/CIWfZ1J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774322694; c=relaxed/simple;
	bh=cbhbqEPzwqaZLHRr522G/RHjvtP9oRVi/LgkMZtkdEI=;
	h=To:Subject:From:Message-Id:Date; b=W7Mfd2bXZQmlQ12ztbOTQqIf6M4j3h8GAJpdmIFDXyEhKYyFAIu5HjHrgfjL1/T87ec9GC4Lv7zhnbZMon5KVAF61sJYiw2lHkmue05tnnD4ov1nRa6LBhwsTBLZQR1G72+L2xc6qu0JkGzkCJ0uc8atEbwGW4hKe+HqUYqinP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppYKONqY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppYKONqY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3347C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774322693;
	bh=cbhbqEPzwqaZLHRr522G/RHjvtP9oRVi/LgkMZtkdEI=;
	h=To:Subject:From:Date:From;
	b=ppYKONqYUZATpvQbVrQNkNpt/Vgus01rGfe/+I6FSbuCr/Gp4ad5bpFGJqNcWzUaw
	 z4UdMM6HNjmLUbeOhAG/FYRvTc59BUux+urZKz0r6K94gQfcRsiJyCPcrnfAi5XtiC
	 CPfduut9Jc3ibpuX4eTwEfBVo7ID7IZ/AI+WOeAItLPRsQf2d4Ocup4WiYLVmRK6Cs
	 rf3d+0aF/ZINcMc9p369mLMCD+3eKqfPMqRU8l6TEXnqn5BrHD5M+J7xtedSNrEyjx
	 DCoyem2XwFVBfGxzuHE1vthCgHDdclhyWh5v2mjW2RPH4JgI2f/FzMut6gPP5+qOL2
	 hGu0Ly4zis3aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D6FF532CB
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432269358.13495.17966708693980144401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07533805b8b179ea36824a95377ed0a09b0e6da8c5ec1149033195189f134be
Date: Tue, 24 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774322693
