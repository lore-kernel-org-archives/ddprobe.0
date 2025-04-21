Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9051EFF9B
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745266794; cv=none; b=EhW06Wx3bV1ysUODz4ahPMNmzdwROw8qcgi3aWjge49N9sdRjjtig4fyCaH8psFMVnDknU25O+17nudawKaX9rjoMCG9K3MAKo85B0mbZWsj/HFrTM2za9AG4jWJ/O3kRGsF96yrA6RhuNZha8P+Ro8rdE5cSChHBVRlBujnfyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745266794; c=relaxed/simple;
	bh=ax5Fuz32+ByrAVc8MskBj/3+DX0qN3AZra4AdHV31cc=;
	h=To:Subject:From:Message-Id:Date; b=GF9i1I8XE9YUDPPXWQsWZlW+Zq8ELK6sOUDghAjO7IhDntdUtOvboCzNRXTjnUzX+euWQj0gzAMSniG8eiNbpRu8VrKfMNI1UOmxWn66vEtFROMG3fy/cXuRtJEi6SB/AE9IkrBB/tsTUdnbF9EWgn2ppalTz1Wyd7Lo1acBYqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyZBqR8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyZBqR8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7051C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745266793;
	bh=ax5Fuz32+ByrAVc8MskBj/3+DX0qN3AZra4AdHV31cc=;
	h=To:Subject:From:Date:From;
	b=oyZBqR8AXO5APAtqzs3kNc6JNWqlMfVTAQ8LFE0f3Ln0jDDrRcFKaC4Esu1NUX3/3
	 wfRrKQGSCf8vGEO4SXcNNyrmkpISXqsNIBIDpL6cSef64j+mdwAhV/dUiVfYPNmDAY
	 S8DUUV5rBPUZiwBc2dILxbtYlKIErZiGT6T7i6tuXqGJCDu6CnywFN9VZot6ZS3Wt8
	 cBJEJbmY7SjpDvlZd5sG2nxfpeDu35WmNvo4kmB0+7KbC2liRy5dEQyxKPR2nBMZM3
	 90IWZg/IiUYWJMwUi9eJotfUbs64/8j1xIMpWstdyRK7nVjywf9myC77ylK0bNDu3j
	 TUr/IFf0J1Okw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB69C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174526679364.15278.283794274962178466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295379d0674ebc7c99c5da919fb4d1252136b2227b92ac9d63d07a46e26afc37
Date: Mon, 21 Apr 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745266793
