Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A632877F7
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777732054; cv=none; b=p0V9sniwcjZTNwDfJqew0PeUck5Fo2xqveD6SZ3GwnXatoDvKTTiR9A1mla+afCnPq/qq3JrqeNHKdOvEi6vhaWT4Y9+E9qE3qykcsuDJtuydzBS6wFDQur8+4p228pmGKQRAcHUDgmHoBF4Z8cd51LZJnFCebiHe2h1Px731Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777732054; c=relaxed/simple;
	bh=JNvoNjmU0wN5soVlVqmyrRhrArNzycD0ZYOUqZrCOdo=;
	h=To:Subject:From:Message-Id:Date; b=WqXl2fCLJ7ihX4JQ7UoH0+6HMwBTNkTVeRpyrKFPsoejZ6A+Elf8Gw7SeUmfn7ihkw0T1BXm0ix3d7FaUfAMNi5+NFaLr1sYs5tcfkMmyAtuo5VZVEb8s+FteZgQGsIZJHNLkwbvIqWPgZyvRyo2kXzJY+acwwt4jAIs5+5/Rms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LF52nfyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LF52nfyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3C1C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777732053;
	bh=JNvoNjmU0wN5soVlVqmyrRhrArNzycD0ZYOUqZrCOdo=;
	h=To:Subject:From:Date:From;
	b=LF52nfyIsC14L+VT1R++RygcvToDKHMh5hP+4RQjNx5MT8xASW+wHSTt4LkXXyHmT
	 QqIcqCcq2grrZwTT7QlTqwcPTSxLJUFQTgSQ+nTMRb8SQm8OEyczjDnOzqvMo7me6V
	 H0RU6yhivntE+Z3saVDY3IWdXYMZl3i+d2FPMF4UBI92Jdx3oQ/iC8WBQL23iCLsm8
	 f2ofWE8LID4deliOARa5g/D2k2Kh1wfOcoWBhC95a7WZL38MHwStMJZ4O9M1UzFYeR
	 Go/AdunUwr6BQkqd0u01oVmfO6D40baWmAvvanIVN6RgJD+nIxzkbMebDh9+xsYUH7
	 15/r1MSAYdnkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90B6CD3423
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177773205368.25642.11952244420961210650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336541f7af322c83ce1088003e9a20074a54297bc2b993a491ed19e89147f0f4
Date: Sat, 02 May 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777732053
