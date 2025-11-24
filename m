Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4888274659
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764027774; cv=none; b=VaPm0xpPTSz5pWyWdPyLxHok+qoX7sH0xVJl5DKhg4ZrBGgTm8PcciHGMR494e6PTC/o15ubhbpYuLNTaRMuC6aBtZkweJbDT4yJmJbiug7Y+L4d5s62C5T/GOzWymF/0SqKnDPKEWzi3Q66qmYa9Rgb7/thRVF+TgsCWjWbd0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764027774; c=relaxed/simple;
	bh=S/8C2kfYl5K5f7kzlooWWUzTPLTLBFPbXiFhG/BDDAM=;
	h=To:Subject:From:Message-Id:Date; b=BzZNbjP2T/IotJRrpA302QHOPn1uMAPv3CMgMU/ADi1Y1pNO9sVn72MUgHDFYuqzqfljnkcxqFoZ6Bye3eZWN2YpJXHy/2fe75h6Rvd2O0xm3poTbmIp+wAxgmeaH026nYG7sS66ky/8cVk+bLYp2/GRx/NfonX7FkrPRBuP5Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okBV1XdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okBV1XdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D6EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764027773;
	bh=S/8C2kfYl5K5f7kzlooWWUzTPLTLBFPbXiFhG/BDDAM=;
	h=To:Subject:From:Date:From;
	b=okBV1XdXWtF3aHalab5yQYJvl2cJWNPL2fOMDTV3c4uqsmC6EOaRzLNuLTpZaLy5b
	 OyWYXC6NGj5drvexgEJirfyC41U4ukAhOeObZHXZd78uZ2t8vvxoYH8MXtR2UFx7Tx
	 BiAQ8sO/4LXcKMUy/DINFVr7NYYC5dl77QZTVDfh1Xhvelg8WlMk8Xg04OqdOQsXCG
	 xq97N2t9qlOSkLZbo4WaGRkCtqV0eDKGBxbZ0W/sPVUP/ZkbNYnRax1TetK0af4t2+
	 u31oZTb3EDtjQwziZ+r/d5B5ywcaHBk1Zo10OJUuqL1gP/m4V2hg2xjjqXToPtjWLi
	 DEoTJZPjh4CLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A78CFD369
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176402777361.5773.7628842216704924154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445685169b1c445f602da367badfe42beff0a1e28b4d64207ac026739b38bf80
Date: Mon, 24 Nov 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764027773
