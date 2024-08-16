Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E1E1C3F2F
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723838754; cv=none; b=SpGV4KAx0PD5zaom1vDb7MEqP7LA133HWQD6burzRlQUysxVamQjcCoZwdXW2RMe2TYj5agi/X35pR4is7kutkk9n3txAL5aHLJGsHuRdyIxw5LL5PE3biGid32UQanfztYHI2rHZgxTz4LkF/hr69rz/44Tw7N96J5RNhyQYp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723838754; c=relaxed/simple;
	bh=qCMrrpQTxouxPcKQO/1qFqwzwjNFEZHfe79s0ZZfTAw=;
	h=To:Subject:From:Message-Id:Date; b=BdW6h4Q146VQVR+p/Q8mnAPUQQAwM36VJHlLRIcVVtQcx9Q2/xL1HmFzHBEmpa6g6aJZXQsAGO3gAvQkSNZ0e2Xj6guH9zYreiV7JuxsBE3lfzl/FswtYGJ2LpqAuqAft5fEmry0toxjOLP4GwC01QjlC0JJrfRDu4fWsXlaDHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RmqGNYFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RmqGNYFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A320AC32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723838753;
	bh=qCMrrpQTxouxPcKQO/1qFqwzwjNFEZHfe79s0ZZfTAw=;
	h=To:Subject:From:Date:From;
	b=RmqGNYFiu1NmGwT1oUYfwk0TtZCRqP5epCggx4MFoY7PmRSbgRRbNhcVw2SXZ3R0q
	 a/HK1/HRKF0FNuNnS0+P45WlVnsNbvktED9nmcWsMYd7G5i4jDLsoieaTsWIrSmVDF
	 kVlPWzOgQFT7OgYCOnG8t64ETgq1GIczbVSFifPkh91kl2NlgYqOuV0smGet3fGxFh
	 XX+Edtxto0Eknj/qKwySDrz5jg3AKc5kALil0+uxIcTPgs+IZveQ1ez2cVa7/icNNs
	 R5BRy2Wn8s7pJkrZ2POqyGp4lFcBnXP1zvMlxnctPXTefBW0+mbduVAoWv9JAmFeAE
	 MoQX7HvzIS6WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EECC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172383875360.11773.9411910803091833523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1272daa8dd390ebef45052ced9912030fa12170a771c67ce45d2e2c4d1f3c122
Date: Fri, 16 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723838753
