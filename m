Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBC7289E29
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753172994; cv=none; b=ovV57Xl5sq4L+zGbfLqvl271BfqEqEF65AsceHBQ4b4Lp1rURJCH5nv1vWciNXhmt5hs++yXDOiYhEPiKBNktZ3fEEIBkxQQVYBUBDYok/UlCC8R5QjZ5eJBdT9dPrtxQXnLtv/lMl1O1sip9qkuWg6eZkj4fVFDNAhhaUXpVR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753172994; c=relaxed/simple;
	bh=rg1JfGp1bBvEubw+op1UZEBCDl+vM8sHhBvcEDe3Ex4=;
	h=To:Subject:From:Message-Id:Date; b=YXKJTExinmIumgP3Y9ta1i0JDvAR0jVAU1ku8CQClndTHynV4pO6rdxq9BVYjejqbdcL+upJbUApQjOEocBivHEfsSe2vA8A7tMuqWuBtHcdZTxzVQ2ctjgYeB6QyRpCCqo9kTV+JQ0/SkcSScWUG2QMYz2Fexn8D19yiM7XYdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nNpPbCIj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nNpPbCIj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB28C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753172993;
	bh=rg1JfGp1bBvEubw+op1UZEBCDl+vM8sHhBvcEDe3Ex4=;
	h=To:Subject:From:Date:From;
	b=nNpPbCIjLkDJa2K0ZaYsdtrbOJywisJrkeQk+CniD6e/G9b2lG6sB3Ney071Z6oZS
	 WVvpl2oAWiWT2pb2MO4I1vMsohmahYurXHYGezkg3gkSrGA4AVNRDncCTSkR3UUNXU
	 2ak7ceen+0JAva/WsbsgPXIKPr1chr6Z61aonu1QfT+ivX2faPByHooueKkH93V9FM
	 FHzAIMvv/fEq5kZ2j+2/Z9CuXMvEYn2BOLvmYnoTJj9tvKXo4O4PEUI4JHDIt7Wc4Z
	 yYthZKCIOYeOGWnEE4odJXAFjg1gDNIpOxb13IpHccJRFlc6pheV7HRZOuGZAV3FVJ
	 3w//u3Ic0lCDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA5C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317299358.27617.12194306203727032230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6906008a880621ff29432042f8ba66a2986ce81b65c9d3da234be79859a3480e
Date: Tue, 22 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753172993
