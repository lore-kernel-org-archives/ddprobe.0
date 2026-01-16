Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8AE1C68F
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768534434; cv=none; b=osG9RWTy5sisxgTwdVbHdytawsLXPjFUbmxFUtxM2e1RM7ONuLOsQNsgxjVo+fcwrHI7a+E8ALl/AZM9xrxUPLE2dGbMxvqoONLbkBIc0XAthLhIp5rnrMSTkVI799hpGcg7GbFyudz9IiFyZzBkRDTLwEnk4aTlubKh76pfIv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768534434; c=relaxed/simple;
	bh=qfM+fQFcD5qVb9laEjJJaxWMz5QhDv0DX31vOySBHhw=;
	h=To:Subject:From:Message-Id:Date; b=gPmmZiOzCn6JR8eFr5MN56Prm82PeMaCNwEV2zdRsP/fHAagsZMpeppGv5bOhzUK9wwiucZ9XO4DuN00QPyqbu9syUI5z1huMCwaSpNF7mfrngPpU4GZeiTOWigWAilkIatCmCVzhqdPayXTh4PwhHl/wybPeXg73Gn1/ilq+TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQnzGp2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQnzGp2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D247C19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768534433;
	bh=qfM+fQFcD5qVb9laEjJJaxWMz5QhDv0DX31vOySBHhw=;
	h=To:Subject:From:Date:From;
	b=bQnzGp2oWXMesGJP1pfvd5U+HxPp3ry47C4DLhYBvKNkc9kBTZ+DA5JCvnZe0lFb3
	 4WufLLuJagZmGZpmM5I7L3Qt5FUMQkNUB7jN+/HmksZOiGVTe1J+O31sUBCNCZuUE3
	 zJ2ahkp8+lTHF+R1O8fd7oExgWgGJtrBnIbyLsSRDTL15mb/IOs1IZiMGdQo5PTZn8
	 g8npAVvCY8JH15HvmLT2BFOw1Y9cRHKM7H91HYRiqGOXbra6hrScs+1tsutB6EfyRY
	 S+R+7MbLAx8CvQWRc7gMgh3dR811UrWTgE6dXplw8ZeOumVpkibeM0OJISfObjaUy6
	 UDuwjYEPyUWag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA8AD4A5EE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176853443357.29225.1157128398148634617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 513d2b6d0abf1e9e612d51dcb481d3e15c13c40de12b2b98add871c265afd3b4
Date: Fri, 16 Jan 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768534433
