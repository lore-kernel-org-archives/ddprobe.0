Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6512E62C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743964793; cv=none; b=jeT95hPaC8An+jUGNtMSdU7S7di6nqaX2EWqiEIF6acjH4XMFb87I0HWeOJuvXseliHK3ZEPZu84ynPnLkueZZEs9cS7stMnzvFS+Pk2VtcOGbnGNSFx5d+uQrgT88aPuoqKbwVr/FGs4ZxdeWfCscvcVv+Nfbm/kRhFSngLIFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743964793; c=relaxed/simple;
	bh=CbiiWbNwkdYKC+Dq7SXVkx6T2iHbB+wauH/QhTHbXI4=;
	h=To:Subject:From:Message-Id:Date; b=NEEl2VU8aER+hwOJeVpy1kznRW4MYRNV9Ea7cCRDwh4k7ijAmfQGMqoOkLvP5hcbz3x48irM3o9cVnGL3LFohvptNn+NB9t33Dnnvn+xaaWlqwbfYLMFDLiBpM22pz2e57fx4AsnqQz+6vdfrf7JT7ouE2SlqAbU3JXVLO6y4ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ugCPJ1HT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ugCPJ1HT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47E3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743964793;
	bh=CbiiWbNwkdYKC+Dq7SXVkx6T2iHbB+wauH/QhTHbXI4=;
	h=To:Subject:From:Date:From;
	b=ugCPJ1HTwCv+tzvSqO9ZLqUn12CwVpETXN10PMa+jxMJ3Km9/j36UYc6gHofFZerD
	 YbVwvbNrT18Iqy7b6ELvLsLWgx4OsvgExt4+hCtlURHEZ3lqt25pkmjBf+NNQ+LBsW
	 HOZRtQGVp8PYkuqVJwnqBkTJL7BCxlLRTSCgZuQp2KOkihD4PyDU+izPhDNcqloDKp
	 c0sQjWEUC7JV8oPuIeRmJp6f5/ME889P9h3E7OpujLqyZgP6EWS2SIAHxnGUzl9M5E
	 dfpSczFHNCUCUL6A2De6TUOZqEPyytaf+bS/78XUOqtfa2MsIzIu+Sh6/JEyC8oPIA
	 w7O8dHEVcXVaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9003AC36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396479358.2289.1785298055082774439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 258a2aadf8d064fda68126a3399ceb353022d5031827c17b75f19d6892d8d140
Date: Sun, 06 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743964793
