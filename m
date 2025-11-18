Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C199A286D7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763503314; cv=none; b=SdlQIih3g3pCKh8MPJthYFTT17kQgMFV0hKDYUteN99LCQr1/zkDLepl5ZxwApWuwIygm30WJU3rdEV1wMvSBZ6UItCd6LDYleERV5N3Piug7yYR37+ynvA65gbbwb7lhY1LaCKkNKMRuTJhru88eLRSbQlp6EWlzAekXvOCndo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763503314; c=relaxed/simple;
	bh=h9Rxjsibv0kcGcI2KU/+KuYHKKOAw5cvrWOzKUXF0mI=;
	h=To:Subject:From:Message-Id:Date; b=tngBGPD0ja32vsUYMmXyMsfzGKX1wznVOme7A9Db4FzvlEGUGmwdY5Nidtv7d8nYPFUt21GZ+RYKw9Tl38OfPv+VbqyIxeG7ckAeoHiWRAL8zCGfbBE2SNYp+is8g2QLYPmnxDy9uR2Z7P575LMSyFzQFKYAAk/XorH63rlf/PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e1kLn7mW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e1kLn7mW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08C4DC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763503314;
	bh=h9Rxjsibv0kcGcI2KU/+KuYHKKOAw5cvrWOzKUXF0mI=;
	h=To:Subject:From:Date:From;
	b=e1kLn7mWoO6zjgMRcIczxJfov/8hpFl4kVJWQLVP8KuYoio8hdX3dml2rzx5sYISX
	 R6rpGbTIQv9BMgHJIMsL/UjbSRrxgoVVsmaiMsJtAFo7XdJhBtXoOyJdvLsHzrkPl+
	 zUA5SRQn9eUh0gGOkV6ZB3FQA1J4oEOfZrSD4VrnZ0pZrYJW9m7LwFasv2K8unGTJx
	 TnCZShOmVnfhtKy7YTQ577lefSGeDtCUJIxtM6lz5I1xAX5bnbzkHYsmEgKVsSOpm8
	 Sck+PFhDW3MgEyeH0BPuqCsmRZ+OIfjwJFtaAHmsyMPj7WVUI98LpuYi0msvykp4p8
	 fHPpjCLHTiJ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CBCCF2561
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350331359.3183.12342719658445346251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68ac7e12f03fa825a19af6042aa24b8877f8df27315d668f97279c926bf01034
Date: Tue, 18 Nov 2025 22:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763503313
