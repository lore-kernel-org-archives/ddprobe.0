Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC842E888A
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787091034; cv=none; b=V1Enzyu92vZ9a+Iy6xfykHF2VEo+efbGsKq9epQEN5V93RSP3jCEDeoNsFdC52qICq0HGlkNBkk2/NFBZUKNDLt+owXZlSpl8HBXAlvjEd2AYnha7gjCdpSPYT4E2yXoC+1c7SCay3s/TsIY+1Mp9F1nyCpvVJjytgLT3O/9djs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787091034; c=relaxed/simple;
	bh=Jk5+nZHI+aNyEIN8ccY57hXI8WC4GVCdKjr5dkTLtAk=;
	h=To:Subject:From:Message-Id:Date; b=mbVukbSJwpuA3R7wB3yQ7uc/FW5NmbyRk4QI/Hzxc4AzS9xEDhdbA+Q1sVcLsm/vPmJmWVTvqvs4+BmQDXhX+NgOaOYHqflTxakuH1Co65Z1Ov5b+4U7DVd/+Q5zGZ8Ub41oQ0b8LotvrK15Zh0o3QHOWkO11o5AO2bF65se2A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2P5qrqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2P5qrqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF439C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787091033;
	bh=Jk5+nZHI+aNyEIN8ccY57hXI8WC4GVCdKjr5dkTLtAk=;
	h=To:Subject:From:Date:From;
	b=h2P5qrqfbPNf3tQWzoq446LJUklswvfpwFsg7rlVz4/clLrPSUs10PMyUuVhh9p3/
	 1SLly1s7jdINfh3QaXmPXA80IIBqAlaoiKtw1+yZt0iIy0pjA5+XgSTEE+u3a62PXU
	 er7Pj0+Ma/lR3o5B6TWVYhbBo7yfhGYHcUUYzKhTPNVIzt+toU6UnhgtmJ46trbYr0
	 BKU8M0SzYRw/AzTAtx80NN4CAGGegF/pamyJRVTa4ExbCq4mPYtf3s169PfXrxz4OH
	 jj0Agd1VBgIiDpIlPxtm8NdWrxeXeSIgxvz7mTHTXyxGA20GvzbrGloGCpEcmRVEJt
	 K3nqdHBJzir7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE9DC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178709103368.3484.12913919176711406090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2427ad8e92fedd7010803138721f722d7716bd1ec76a64d23f3e8f167a4b554a
Date: Tue, 18 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787091033
