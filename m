Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7C3354ADF
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762882794; cv=none; b=m0mtWCvlNakZYyERdWGhfPvrx2gu8u8Bk2uUFE2duOE7uKdnl01LkAdHzxn+ySejIoBS3kf98h+Ynx7eiwKXbuM6EhHxgVDe1aagwEu+8Vh5bqyRPtHXD7vEbIVJVk8gJ1HjPTrHFPEeaWvA/abLslrEuEK+iUp/lxrDo1nwxM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762882794; c=relaxed/simple;
	bh=ZHyK1TKi9HrdraeSNvZDyRJcyUYoptVpgse4OgeyboI=;
	h=To:Subject:From:Message-Id:Date; b=Icq8UUxYIuLCjk7rwcR8i0X1pUXvv5Tz8pAHFbsm03bwIYoAWnbyQBt9QzxEMqK2Y6ND5OTGRQJ20DT3TS3alKMGvOZBNrlhqdKyEifTzGic/+PyhJVyYUAfwUc7sRbmY2fer/kKpuOU+YtlS3Zr849slLJ4C0/9ULW7xWEzdVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VRIoxEDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VRIoxEDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A9FC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762882793;
	bh=ZHyK1TKi9HrdraeSNvZDyRJcyUYoptVpgse4OgeyboI=;
	h=To:Subject:From:Date:From;
	b=VRIoxEDQaxoQDoGD/Z2ST1oJi6BCOU0rBJRtZNMShz9pR5ihpY4S5/tybVwMAcLSs
	 Fs51cZmd97Qo1XFlcAibq15y28oFfYTPVkfJHZvoi+bf6fbVpVstRZbPDxFTtLypIa
	 dI5bl3Z1TUz/6jtr6j+Rw6iZmdK0dF9pu0syt/O31QhzswmmMPWSrARKGgcClQ0Aqq
	 lHAK8EK7RetIsT5KcrjZCGi91HsPJqvgB2vxJTSdl+6G5ADYZb4/CZEuGp8ozWlMg9
	 agCvOoYSBC+2zdelSG2fJ4RWYllJfQ24+fxcViqMLFF4uQmyxkzjlgZlPc68swn5lz
	 uE/zdbdFssygA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FCCCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288279357.6030.995231479479954818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e4965ae4d81ac3741eb7105ff14ca26bb64a16f5e5f5efc1f6aa257aff25964
Date: Tue, 11 Nov 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762882793
