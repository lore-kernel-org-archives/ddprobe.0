Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E9314884C
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754808594; cv=none; b=JlVl/KxHuGfPwkITLTnoVh+Q7Nsn0Ecalw5yyXa8rp2DQZDLe4BWuPlwHzeQQhFc9ddf6Jw4yj/USJNFHVXz2z8LrmYzPAtzf3w2vix0/mL1ZkmtQckD/pSGNU/flSkAPuTKbXxulP7rzWNjotryC/2EbnMFJwfX8KS5ov4iVMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754808594; c=relaxed/simple;
	bh=ld+UX63MTXi9Qg2UW3fBEyY7vLdbqQCmo+/yF63CM7I=;
	h=To:Subject:From:Message-Id:Date; b=bYo4hHTRAQN/bQttd+uW9xttSpLXRR3z0Gao3lBpvlxmdmzKFpK2r/SCdTkiqCTe6iJZhdvwTfjfTRxPXmw9ahoNN5AkwsONXj+w50lgLTX7Yt2XQVlw0pvTLMZ8GtqEWEo0fOPbtekX+57Kr+2v9KQlu/SIVRQsXtmX2VoMdcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dY6ww7eC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dY6ww7eC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E56C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754808593;
	bh=ld+UX63MTXi9Qg2UW3fBEyY7vLdbqQCmo+/yF63CM7I=;
	h=To:Subject:From:Date:From;
	b=dY6ww7eC1JS1RwHdfqUbh6V1Dn8KkUoVYYRhpmA6jnu35IpHz+TdaSMB/wmdlmc8x
	 jIp4KVj/KAGk78evaLC7CfVCbnzGpH2TV4SiHiOkrgJK3fds+Ximoie6PHa5xEbULm
	 Pm84b0zLvsspu/T2rJMAgUFbBOVAJGrhwR2OFDOlfyuZjIrsoYVv6BW3pn/9RNbJi9
	 ZvR7uDvec0/NpmyVQ4TWtN7t6H6OleWdOu/2MciWUk6yWUZWSSrK9k6dWpnH9RyI5z
	 6bVpxduTvr0Z9a+gClHwrKTXRer+r5HkT/mu1GrnUvfmhPWAK+u/tFsbEHpss4bGQV
	 gAh4EUXmkseqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9172FC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175480859357.24782.5600129126286364324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e742a03bb7066215d2eee5c3801dc1fa341bcb96abd0507a9c76ebde3a117ace
Date: Sun, 10 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754808593
