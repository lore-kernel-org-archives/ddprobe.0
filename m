Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349D61A8F98
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746908394; cv=none; b=sp08Mus+WF4WqBAFDyMGCIPJhRlkdvU5iaOKvFmusfT32Ualni527N3qoVnJU5EC4zj27QSGgcBAqostKRXAOKamEKahHRu2Z+D5NRtIDbig5b3gfEGsOXAyHI65pejJ5LKqyuOmLd3G+VMMFmERy9ykp4QgVbZlT0AgHBSipLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746908394; c=relaxed/simple;
	bh=KWWQJoahc6VQLqRPuD2FpCFZrnxolX2ga5cQFHdvfbo=;
	h=To:Subject:From:Message-Id:Date; b=oLf+40AobrPQ5D8Y1Eowrg4uJpgXKgeA+z/qxWz7UKKFEvHCxytEh0gIUWSM0lL8J8HqTzobEGz5og4tAmlqqwPwP6yD5Nh0oihC5W0wyPGPsO15j1AaXC2c2FU28SVdVNuXHwnXIbL4mFwtG6r/yk6+G5hfRqt2SPuyUNhg+OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZLjCiYqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZLjCiYqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60F4C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746908393;
	bh=KWWQJoahc6VQLqRPuD2FpCFZrnxolX2ga5cQFHdvfbo=;
	h=To:Subject:From:Date:From;
	b=ZLjCiYqetlKmXWsqgB7YybW3iSr227HeYGLxNB/6e8t/H8mGmQARAMEVIdduuxM/6
	 /4N15dlt7CF0uekvm+nl1tqS2sxSutDviUXTdloIZObIR1AgQDblJ6Xfsj9w9+Lg+L
	 5cq+h41taFaIjJJq4QRpL6x1ck2pF0DqKrqEkuSDkyUJaA6J+ctpqXW6dK1ZOIScjn
	 ADHSmgCxfzjGbZIQMAuc/+zSTgeIbnzTBxmcuRKlFpI6Zu4/Xl/4pJpks6ux8NdCc0
	 mqq//9nuNV+aqscSyDsGQFpRIPDg6JpAwwya9fft9VL8IZcsdLdmw8k9LviqJBxCHG
	 d+prG84rxwVjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9387BC3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690839357.17508.15922960678141934022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3086343e8ba434a61ff4e144c5acaae9a72b7c56f0f851fc2327c7638c36dfdc
Date: Sat, 10 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746908393
