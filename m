Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DF4848E
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714239743; cv=none; b=i0f0VXfdzEP2ViPeRpPiFXcYl5S4HNJyM31H7YenDUCOCaAK5D0TtG7R040SlQ4YeU21lmx4dr1OmUihDOON1kEoTS7Zsd5fFhBDkHOc6WyFyZWBfOH1T14KXWdFpWifmtnSQfQxL90a5C+WpJWPvJOeqydVsPDJAY16X2OdYVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714239743; c=relaxed/simple;
	bh=qB6XSQ4mWbpxazRMNZd8csNAxYlq6R0dLq1ZBTywjz8=;
	h=To:Subject:From:Message-Id:Date; b=ZjZIJK3FBYJ3chfX9pyB7KLcqqEdY9Ip5PWGmtb1HG+sOaM51uqurq2/6Ks9U8rak9qeAu9SjQS+D2wj8AmQqv7FPUJEc7m5ZzPHzpPoCnPQVhOTyIc5hrfRrxue5QLkLOprmXdd87nje9qeGfgw2kaFYeYR/D1WgJdqHzjA8KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Th8j7Dt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Th8j7Dt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AB7C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714239742;
	bh=qB6XSQ4mWbpxazRMNZd8csNAxYlq6R0dLq1ZBTywjz8=;
	h=To:Subject:From:Date:From;
	b=Th8j7Dt9Zrot5JmFphtZSU/m2wNgTL84xHLRHAx07n8Yr7uYqs1jvFgeaNbGX8X0d
	 luoJNePi2JjuAE/C90bfGeqbL9MOhiVZiu6txrnPGDom5AhHH+tbEkpdMMD8UZ2YiN
	 0+NaeRe0gFO88j81bncC0xtyzSFzMaIAziRr9wLQ3joq9YCiYdvwEcFfMy3GJjE8K2
	 XCcFfuoZA2d82GLvur+HzpvNgtdG8ZeNHuNa+slTY2rbyEzjp9XiDrpcVRhSRv1uki
	 pkTTRw932JPvhe589QTgORmdXPS+ymzm+bmXfxddHb/FD0iQFowyrs9czrepOZdRkn
	 WyH1K3/5DgoWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C23C8C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 17:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171423974275.23140.11284211657387599517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eb5bf040c220e4bfd2a9d2c778a5dd80275e53567c35c4222a6b78ef7cafd71
Date: Sat, 27 Apr 2024 17:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714239742
