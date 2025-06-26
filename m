Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BFD1FFC49
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750970394; cv=none; b=Soh15Podtza2wtst7uzy2B1qyU/Dp2PX5i2AeHcZPhLo+etYL8ZVDwgbki68Da5PHcetgJEwmpYzmeDnzh84ILa0jbCf5zRMhGBTaXP1lfMtCxeiU+ijMj8WkzaUsR/FySnYiR6zBUWWjldoaj2Akm3cUFehw1bWoEE3mkCq7bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750970394; c=relaxed/simple;
	bh=L0gvW3KIOHTwKW4y9Cw4b+XWEBwB8nxMpW8K7Nqn4Xk=;
	h=To:Subject:From:Message-Id:Date; b=pMzJNfysNzLssDrzq0qAzk6Lj+/GYkPgED5o/cAtbMqwD5grvbH0714nV37iQPdhupfDaWS8pay1VVKvjrixldH4f+lZQUCTqzyRedK1jMh3kaV34XECmEs8yT6+uyDwgm6Lyoppw/c+nYSREugAicecLRNenVYndWT+9X8Go1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bvEXRh0f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bvEXRh0f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04B7C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750970393;
	bh=L0gvW3KIOHTwKW4y9Cw4b+XWEBwB8nxMpW8K7Nqn4Xk=;
	h=To:Subject:From:Date:From;
	b=bvEXRh0fyrOFTJ522PSfVl9jJcDpkWb98aY+kwq5iMkjWBEZd2Pm6PBr2SBuAJkkW
	 KGsS2fmj5qk4t9qBYMpSIywUQEtUuxm8R81sMzCVv0A09Ovi/Y+vu7dIjmkVHmI/ps
	 ajoqPUfK7x2DPpDgmTmnqX9dWfcWm00uKIGoqTA2IDIPkxNaY0YsxC0adRQNLdtYin
	 8G+YYcFRlnkR07yG32TB5Mw1RPKgtzCIDLIjaZKKODncSQw1zIaGiRpZOFVm12Iv6D
	 nNZVqt+FDXesTWbjZgZn6WAy/FaMooeU8gQCoZTWIw2uKOPUY5iebHyJFxAAvpnIaK
	 u+i0B660S6y1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9639AC7EE33
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097039359.16421.9818084435168625039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8905e24591802707af94501edce8f6bd884602099c012ca08c48c9d2ac83a2c
Date: Thu, 26 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750970393
