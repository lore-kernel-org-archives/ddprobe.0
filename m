Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22639218AB9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759130394; cv=none; b=EPozYZYBsPZQ+lKVG+06NgGDu5zmVgwBahS/HLqJKjhTmJQ+A8+Mqsci/6uGPkoHqRm06kG+NfwLmLy5htmHTmzOL+eTjVGt6y+fSM3K5R0KK5D2tff4Ui/Fb2hRnbRjKcNvSc7dtgHkEADFbYM1l8jfP0IaKNoY/TxoNDn/AoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759130394; c=relaxed/simple;
	bh=5Z1Sa6NEQSCpBC3FGfCyYrC3KfdMmfbO9HwPPS9wuc8=;
	h=To:Subject:From:Message-Id:Date; b=l8RRH8I1XyQhkrc5SoDmz65VA+h94Qk9rmijdHLLuMRHRvgOJ59BLe2luaeYqX0lfYaAlpKE2hBqftlKEg9LbFXcA0d72JdiWJjIFtaMCyUE+kGeca3HdM6Itx4V7ZGECCb6op4NPvu39IYxav2BtN3NscPYnCr1yQ/WnbYY2eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDskp0fH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDskp0fH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08B5C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759130393;
	bh=5Z1Sa6NEQSCpBC3FGfCyYrC3KfdMmfbO9HwPPS9wuc8=;
	h=To:Subject:From:Date:From;
	b=mDskp0fHWK/lEZ8FAVq0dIbqv9/5/aQPHQibhAT2z3sDqL8rDJ7hdMCcTDpMazy40
	 DL1olcJGwDm4FncdYfymy0SxolE7ZykS//Nq/b7+4XxmvqO4V55OPhCHu4PbLxlihs
	 R3sFhCrQNnNRbJKgI31aAtcWJhBAs8WcOJk/iQaqaqotY3G7dTlJAD0WTCGPEJNqDh
	 mFZnY4rzN9oaMWUD36Ujo1a0X47QR4Nc+0viP12Z9ukOoCc/EgUU7fy58vKIKiMi9A
	 U2jhB8TJueHY8krEIwiY1oPaxERBinRZdb8APH0DSqbxGtqbiLQeS/9+EIUWGc8d/f
	 fktYIcbo3f/ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9024ACAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913039358.24583.10881109180157102346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60c8cd086e821b09b17275d896972a1b2eb60fbf1597948439366cd557083071
Date: Mon, 29 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759130393
