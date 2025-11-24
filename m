Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5643148BB
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764001314; cv=none; b=SWZuc7vobW+r+NgHhThe6+BnqMTi3QM+nIjKG7carVnVwnWxTQ5zLeJwQITNmYrZEp1IGw5DZ5Df/H7rrFgYY83l7tFkQnIkEoGRAccb4NeStehQaBSabN3x8CSus1ed2CGchLPmuWKhXTKNZG/x22ZSpAqTucgaUaN1LoQUoRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764001314; c=relaxed/simple;
	bh=y3w7k4GqfDf5c9sxjhPPuXsdiDnWZd7hMy4HjYYOUYU=;
	h=To:Subject:From:Message-Id:Date; b=a4Iru3sUqlrV+/x5qItZe4kLwq3H76JgL+zO3Pc4KNHLI2bNVvLGjQJpPwfePodNviuGXIWmc+FOY3+h4LN/LwZXmoUEDwJYT990niJz5JaSZ3u10LZWIwQ8hCMhzfplCXLy5MiF7xOYruQJZs2x9toOQUKwTGSuo5tftahCFUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C7fsWveh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C7fsWveh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 983F2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764001313;
	bh=y3w7k4GqfDf5c9sxjhPPuXsdiDnWZd7hMy4HjYYOUYU=;
	h=To:Subject:From:Date:From;
	b=C7fsWvehpqhjrwq4dOBRG0NIBi2JW05GnDTsUdsuFwYfXjk4vFSSDyOOSAmvX8P/7
	 bDejcbdr2yhsVsvhK3w1MFlzCocpjgYfZdCLRnsy+TFwfw0FWG034AH2nP2tFyXXNR
	 fpddYKHZwoEWgmIrhH42fNTS+hYM1tTfr83LWtd35SiNj7TOwcJtBTCnx4XgoF7mO4
	 3d09yiD875RwrEOwtMZU0u4rfDpUVBIdWkldL3qEXwvQDPJAblIdocG6BIGs9SxQH8
	 x+9Ehev2XqUKjU4ZjgSjKbTqLeUAiP9Kl21d3D8QEmvq+uqxkyDPVsHGMvN0imI2dC
	 f1/ubI/Y6C2cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EC9CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 16:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176400131358.11152.3852540067583216560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4902c4255b4b683298fbe70466c3d21b464eb1de982ea80e22ea8fb46355dd0c
Date: Mon, 24 Nov 2025 16:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764001313
