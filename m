Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CBC92E3381
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 02:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742007534; cv=none; b=BO4oTgdnvRz31lAjnNZ4kWYMF4UyZGVJmfHRiwGTc0EJxJ1+RwmTUpWAhLgUHtJCgbKDMDjQTk+nk1Suacupq5GAeUP82NHwYBeD5arS+YFZFgWac9tieZN6r2dxxgU5ey812Bo8AjDVgUq7wj+52KxLEGaDQVclYj6yrB3MSSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742007534; c=relaxed/simple;
	bh=N7UDbSX3DvlOZPQ1t4/4iZjJfNvspV4tyiw147am5Nw=;
	h=To:Subject:From:Message-Id:Date; b=ZB2s9CinYXJ53wyZkZY64yW4GROraaHRB3z3Mvfsnmlei+m4uBcQyO9YJKO+Am3+bJjMsgkVUMrRsnoN5Fqe2jN+nGe3JdV6hwJsJY8wRjvbd4OZMpjHa7onVAVPnhD3+KdO1tLN5f3E11egWDwA2n0yOCtBnuVNDDroMQtZL9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E82scBdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E82scBdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA89C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 02:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742007533;
	bh=N7UDbSX3DvlOZPQ1t4/4iZjJfNvspV4tyiw147am5Nw=;
	h=To:Subject:From:Date:From;
	b=E82scBdZxNRTRzYq5di4aiCp5WFpZ+wvgLG3zJoD8XCLC87gH3cMJuj4lQm7JumhW
	 ffE2/LAvYtmvPXsibV0Skpg63suKJU2P2FA5zhajEXn5YpUAZblo0ZO9SHisvc+XKm
	 Kj2j79hgCMyO44apO+rwtngiJCLiiBV8CmnNKJE0LHQnbD3v4Dc7WA6cWoblxekSOa
	 QcowWHUesLiFg+Nbt9MujIig3rThjEAAkuITG2Bn0Z5mjRZLPEOmT18f7sRvPxr8OE
	 L31uQt2DFNaoN0QwQP2p14LnSVfwyLt4LQE/psFjIQKXxpD3y+v43yfdvZ9/sOaKCv
	 Di4rfnVxdnOCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E9CC282EC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 02:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174200753377.18029.15753922462295175928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb4b276b28c1e6e63a3cdfb0bf8afa82c2be521e5cdd5ab99e3dcfba98e8cd3
Date: Sat, 15 Mar 2025 02:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742007533
