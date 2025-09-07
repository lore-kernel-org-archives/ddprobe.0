Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B6A3A1D2
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757209794; cv=none; b=FHWQKqKZ0fbFDjNFni3nlhVd7N1rlbxin2rXlGm3DYQBZxOgpmmgihR8hebgiLnNgGY1n8uAKzTwOELp61PZQ8YxQU3qAh/YB+e3+jFE3+2s531M3PTQlubPXBW78e+ty9u4/v8HviS7Q2VgJV0mapOfXQbh5yU5+WxpSYWuuEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757209794; c=relaxed/simple;
	bh=FI7JBl+CSnBPH/P9JDM3CNW1nXuWTsbyHPCrE5b3qpQ=;
	h=To:Subject:From:Message-Id:Date; b=HKGoSnie8ywOVLEhfpuyIyF+6HvEURmIwX/TehwdOgOnGp5SJFLi7DxNudc4T3c7GuZFuPsaIMPFDHggL5hqmiSjY/8v3j+pAcX2Q6tL9XIXvVjaqaTPjqOiPrD5VL0OukcZdGVfcNIQhf108KuKn/PXJJZJp4PvkkG9ln9LTHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLuGjkWN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLuGjkWN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A6AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757209793;
	bh=FI7JBl+CSnBPH/P9JDM3CNW1nXuWTsbyHPCrE5b3qpQ=;
	h=To:Subject:From:Date:From;
	b=WLuGjkWNhHlv3CYOM7Ykzp8FjPEfOhkmf/mK/WGZ3uWEMi8XOauOi16rkogYVkQ83
	 PLkmp0dBkX+0cseDmpkAMpw2GHpuT7KL53pox2s+rn4dvpejj17hffZVXDMu5cbk4e
	 1wEYMATC9KFqLRvtib3w/L+KV2uiDIRzR8nToFbNrJtVBLyclfNjAlZKV8ubQOPdyq
	 8zXyr0eixTa6TKjIKqJMVCIHZiU9FwyIKNMl5H62JM9e8SW48/DIZRZcxZ6j69X4kB
	 dEtLvZ8qozn3B+48tk3rYOjwi8eYcuMKbWWgolYGB0KVrId0Npccu+q2RxcEhvLeLB
	 aCDOc7MsEGqEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA9CAC582
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720979357.8972.10111584592964118738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614dbdc122616ae261c05ef90fb3044250339629ec1e3e1699b09ac2ecd1aedb
Date: Sun, 07 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757209793
