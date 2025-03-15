Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510E81F582A
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742036934; cv=none; b=d5Xn5PNjVS2W/xIFT/nfxeE0A5hWJFmrwi+y7eEJ8Q71rCIV/tlqkCN4Iqy8j5mWVlbrHyDn5JQWnKWkRjWn/qgJNYJJoqP3bgVEeXYRjJOAkXLvq1VoCBd3Wcb8LXEzJIB6BzGyPwgNS5UdfA06B3yBulk48HGDMonQ3sgCHhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742036934; c=relaxed/simple;
	bh=tPaL3kUM/blHDm9EDjb4AOu4nbhbsM3xLaP/eszYlq0=;
	h=To:Subject:From:Message-Id:Date; b=kEQK4Q8teVThxnof/r7/CXR+ltFMT/4uM6ccd0CIDmxbwXvOWbJedWv32ACEkNOD0FbIlAzGhodVu7L+gL3/kk/KOApY2WW3DnCcoSas59950R5RMOGw5fuCi34RmGH2/CkdQi+iaIoJjn5n5rleyTpIQHa0+msuNXcuLXDeoxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEgYJYnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEgYJYnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7493C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742036933;
	bh=tPaL3kUM/blHDm9EDjb4AOu4nbhbsM3xLaP/eszYlq0=;
	h=To:Subject:From:Date:From;
	b=qEgYJYnvUoQ/fH8z8SkT6Za7GX2s6QD0gs6Nr7wifymMt0bVN8xxi/OFzGdyxP4r/
	 ExVLnIo12NhGNp05FYuU2KNVCVfKIcE7IPROSHoutuCI1dl+Nm0nP0R69tcpoojAIf
	 dgLB7yw//TM0bUdFDvNHTl8A2ZcAiBzoOTNlp0vXRJRlCI+Hq48xXojFDAbtv18oae
	 tHkyRnmEt0iY0Rs23YqXl4nZIB2zcPwICuzD4Bxe2934hCir6tFAdHrK1aTkkD1Fmf
	 zfECHpmMCceINGvYCC3yGp4idma2ySvj3VMMjDKPj4Gv3Ggqo2XxYfhcddnvL8T8Fo
	 UCc0ac5zHCdkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4F4C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 11:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174203693362.32742.6098754833002394138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325cbbd606c4574b85c309bca7644e6d58b5e91ca59b2a11db9d65d7ce7fe9cc
Date: Sat, 15 Mar 2025 11:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742036933
