Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE7B155321
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 18:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713811823; cv=none; b=J0Sz8lN0eIVKA3o2HQbDqNC1WA6dLzx7YRehl7Zj1ApQvhqmnrDXhKqxD/KQ2fXxyN3Xs5PJK1jJea5QA6n7e6xdzzFaC1fr6jZbRMUZsotABMMxYj4kb+INs8Sd7AG3xpwyBxFWaGRCuh7DxSURjTX7/84bjfJjAztlUbpTNEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713811823; c=relaxed/simple;
	bh=Lvt3/qRkYcKF9gIDGDvd2u+qM4a7xoUyqo2XHTRJW4M=;
	h=To:Subject:From:Message-Id:Date; b=kg+7LisFo06IdadpI/t1nm0okeWbkZ+8rGjq2sasxQBlfTFbFsXzadnX9UnsdxUks4u5WkdoqY/H8bYegRMuCuA9IbX1LQfB2P4JCYeT13umwyBsJwsp5cY288GBUF9C2EpKoNMrxclnEx4FasaS1Fs9SUZnA20UAK+tu/6YYdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wj1RlizZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wj1RlizZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E12D6C113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 18:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713811822;
	bh=Lvt3/qRkYcKF9gIDGDvd2u+qM4a7xoUyqo2XHTRJW4M=;
	h=To:Subject:From:Date:From;
	b=Wj1RlizZ0Zg1Q+am675rOphQxrHh3YSStMtNAHkwWpBMCDeK/l+T+gZL5oDr5kP/2
	 k9+b+ITcLsbBB/2wmzv8fNWBjZ9uT2g5SH0TSgz6hGA0pDVFvKZrLA+oS7/LI76JV9
	 5Cu4btLxoEf8i7IlSBaioZsCfjUIe8Z8din7lZSanOn1OMBTd/HWZdUKNdhbOYb9Vx
	 GU0vrJNSs+bqvtmgBPn50ZccYG1/4/D60Zhj/d5xFYcenQfQkqI4oXEhdLG9j/2plw
	 8bQnJYnUtNCmS3onv9w12I/wP6uJx31nOLinp+1qTawLiApbu5iI5iLTSdG6x+OcsS
	 6tffpnC0Tdm5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9DADC4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 18:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171381182280.5701.7781364334944207519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc32a3419418f88be0d0dab1d50c303c471e65ef4b8359dbc5631a158d9a0cd
Date: Mon, 22 Apr 2024 18:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713811822
