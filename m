Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5691E2F852
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738446954; cv=none; b=iKTzxFqyzDQilBpa23KJnO/7btoVTsw4EJuGZ4iJVbPuXIpxxlb2Boao/l/2nTIt5z1H2uS7v6TOU8aZs1zzBjmUz3Mn+dq3lTk7seGJ3dXuzk0H83TQD7QOj8pbLRtfXv4fFDehA8RraMubtCL/U6bXNTDazNu1T1DQyjclJuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738446954; c=relaxed/simple;
	bh=b1+qa2udVwtWt0zE+H8sN3Adi1Wmri0/C7WaF+LgaFA=;
	h=To:Subject:From:Message-Id:Date; b=W4S0Cbi8WrTjAwKIJzklSvN5GEWEg1lLZH3S0WRoyqTlYLRVZlZi663SRpx3O5f+7fwyvH8kkaH2quio0PUEPlBqgsPp31LGbVvijufT7gShvyLbAp97IshSfoF4bvwQm9oUqDHKJlTanDuylbie0QDb4E4bbb/9HbU9ZltA3xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANHYt7sw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANHYt7sw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEADC4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738446953;
	bh=b1+qa2udVwtWt0zE+H8sN3Adi1Wmri0/C7WaF+LgaFA=;
	h=To:Subject:From:Date:From;
	b=ANHYt7swzifr1IJRhau3GL6tRv6JeXrI/UrKcWNnBhflHl8YBwJEeuYz2AsrF3XZe
	 /ySEmX9UvU8Rnkaty1FByKAoNUb+YTwgc6CDNvtCZDJQg5LeWj12pIX5JVvoYm8VON
	 Ttuh5blHQFOXvpNE4sZJZ0M7fhtTaU+CxhVjZogxhh4ZiEwHb8Q7RgruJ3afXQ+zVk
	 1+FPCIiq3rgj9uwtxIjXHEZccbVwUFSXv2gsPUwIMwPapoJ6E+LHuAZruVCzMDv8vO
	 sNIY8Yo+62XmSm2tlyLUN7zXTuXYJCDK6Ds6Ll+ImEh2fPWC3wdZe5eo5K4IMjfy4D
	 MngDmwNtl8Clg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B4DC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173844695363.22915.9804638308024727379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9af6af2f7be87c69380507d721e67e7576b9013df638ec8f572345fdb421373
Date: Sat, 01 Feb 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738446953
