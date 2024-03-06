Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B411386A3
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709753897; cv=none; b=kdEaqz5lwr8MwVp8UFWct0OCsBFI+qgN5xg1gAMYIRUfgFtEikDhxcnk9Nxhz5X0lvHpxISE9L1Mqrxd39ChJA2uo6boPtFZyV0js0xCt5MHEvL/hOQIo0AbpncS2mN8OKz24y0xsApJ9D7mX4WCPgxk+YEVmTCKucMkGTbYkvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709753897; c=relaxed/simple;
	bh=wMONjGEBz4hKvbORgV9Bi2ofP0HFLxVRw7mie2gaABk=;
	h=To:Subject:From:Message-Id:Date; b=EOTWckTSOS8JcXDEvm6l1ztxUQ4m+aJzwHxNdiaAax+teUbNzq7FtVA6pEkZaycW4/F87xSu1YTrXVGPQFjKCn9gTq8Y3l/7yn48kCBRiuHAWbpGXNFTneTDRxfGYdOBaTWbwdEZo+DG5ieSh/0rmkhPEY7H1aMIAlV4psAUMIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDX70iof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDX70iof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 850EDC433F1
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709753896;
	bh=wMONjGEBz4hKvbORgV9Bi2ofP0HFLxVRw7mie2gaABk=;
	h=To:Subject:From:Date:From;
	b=uDX70iof1fDD+gbgdTzRyBfZI9InvdZ5Bvlmr1vPUGFzwU86Ziky3kzVVUrkfGT1p
	 SJqNmMgWsofAACM1aILraLM3QKHljbBHdOybrwcydnUleDZC6NS1jxF8qggbH+4VHB
	 WdLueGPHYZ91KE5CjWa1bBKPt2zYuMfheZW9j6+v4agV/M2o09EFKE1DR027a4mQva
	 vowR3Xg3SMgZWHbq5s4zoZQd42NS3Tnm/Q46XkL9OO91r3fsCyhSKG1MbkAxUy2EiO
	 FC4n+os1qiMqL+RbKOqJ33IrI9RGdfQbgu8T0BZoi13188jZCLECRKZB4vZGQHwOGv
	 1Dcw4HYYIB3fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 670F4C54E41
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170975389640.16983.11182806412877902007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23777456bd4899743d107d058607eb0f783bbc066ac924706f6cff5da8b79fc7
Date: Wed, 06 Mar 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709753896
