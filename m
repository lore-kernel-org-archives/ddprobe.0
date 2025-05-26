Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3536E5661
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748291394; cv=none; b=l5gKHSeDGWltKAclsnjDP0z0VbydX36FkdsNOFDqK1dhzJl6xA7v9VMWVu1WrPbkrOIUV3ZbaUp8DerNxYbK+2n41lnbVZ5rn3VlGDtcxqHm675vqJs4bFZiV4hn1U/VVxfy6n019yNieItNFbfWxQd3j1SSGWYDyB2OFzDuewU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748291394; c=relaxed/simple;
	bh=7FqmshCfRULPA2HdtmKb6n8XA3TKrSPLC585uTxVdiw=;
	h=To:Subject:From:Message-Id:Date; b=KhZlyG26cl9TuQLxnoTF3EmONPcbcs1caRpnMWVlfIKVgWcqf8q3fHgRrzno9m736H0+xmq+aHIgbl2fwZdVzRyq3eLpZIh0TyJWF2Gedvcmupfeg35FPXqvgqRdAd9InrQE016gH1P8xIaYFTTL/teG/a0Iuxdhmk+BWtpyyKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YX+Aa9Y/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YX+Aa9Y/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2060C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748291393;
	bh=7FqmshCfRULPA2HdtmKb6n8XA3TKrSPLC585uTxVdiw=;
	h=To:Subject:From:Date:From;
	b=YX+Aa9Y/9wBuvfM7E20AiNWRe3z3U+fNBZk+2rXiuOEDWQR+3ajDx1nlWRoEoCdpn
	 k3L4I0bGRakdzhBKaFxC6iV0GmX3k0w4O2MSK9B4IRar//+25MJbg84R7SZAK2nSxD
	 c6gD+6Usipbu12GVfHmj6IF133c4rOEXcX0hI3Gw0XxFDzxcvENgnYRgUbdIlEVrda
	 bDgUsRPIdSCwydlRADvU4jDDj0TLXe9+9H1WIZl5aYA40uSTLno7Y6UbVXlngrJ/Wo
	 bQ0M3XsGRl8gIpXe8dKBQjJJs3zDmKwKTFNsTEsPiiX8hEdHxXyEBeaVLl0vhXAlTE
	 SpOVmyMbNfoNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B6C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829139357.17934.1146212420705766455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1076d4d8518e3526a2ef0c48ceac7b41a19ee6bc40c17dea93bba6621d2b6cd
Date: Mon, 26 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748291393
