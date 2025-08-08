Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBF627CCF2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754659795; cv=none; b=iNm5Y7gclhIIN0kaOaHWE4ya8FrWACUg2c5n69aUggifU4Dsc9myK/nWmjxZ3vk5AJK/XZi01Bcc/9bmZndysWGpCuVa116GnzpCy2T8m8uh+eVvGOFLTLQyVQnbHiaK8ntIMBk1u1P/G9tqW0XELuLLIVZokr+sCYPKAglA3Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754659795; c=relaxed/simple;
	bh=4totlGqg07Od093YyN9/RC0emSuFf7Hhmk3P5lvUyzI=;
	h=To:Subject:From:Message-Id:Date; b=QlpMhyLehp2ODr94NkjsX7WGaSiqczlNZmHDp1/+96QdvQYtFDrjbuWIw4DJfJ49yrx+aAg8Qg8Rc5i+UDCj51kU9x1a/S+LmJtN4yv3+ohDRar9hcY6uI7T4W/j3fdd3vs4YCfJOXv4WHTieVoMD0qHGCXtawmiRbv0+YqqVX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M53yYWQH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M53yYWQH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12B3C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754659793;
	bh=4totlGqg07Od093YyN9/RC0emSuFf7Hhmk3P5lvUyzI=;
	h=To:Subject:From:Date:From;
	b=M53yYWQHwwxirHw4BWRv+xKgBDmHMpAfeiaeE3EYfpr2XTlgTIkEB10zyrpipJz52
	 VlEOiV+loM+JZzfyGjpGVy4zmj+EQ9iRq6cmLKnz+8+sgkGc0Yz2+0ztHkP9zt56YD
	 Wqjdo5ROPZ5sN3baObApSvZs+0V930AherPvoYXilgcXXMOXYtnrmbeJCszHNEGEKI
	 dFCiPCEBxGfNo8OKBuoZ4d6QABS3eZsOLahUDUjGwUhyKVZvA4jQTM0sG4BLzfotrL
	 KvkN7W+qgXDX3hyVNOVedCMheUkLOVjZPsElKHh1krthLWdyJXWqtAmJicABfi3C/y
	 1URYhcTCVqcFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929B8C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465979357.14737.13250857406460332971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b026394cbce446fc2fda899994808d7de20d26be632c287fcd85127d2a144e0
Date: Fri, 08 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754659793
