Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E1319CC29
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748851794; cv=none; b=FCpFji32/24LVoxB8e9s8gyb0xK3fbHMqLnraMcHrC5sUPFjCDawag+vN1Fo95uzPaqEtVyISk20bi3vmhq20Q2N7mDbU2Jub/5ADvud33d5uoWLsoJ62hmjEI/m86IaYiBU3Bjy31ufRun3LE510BQzO0v/6KP+l+oWomNMxKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748851794; c=relaxed/simple;
	bh=xmtF3r56mAlNbJ/qaxp24J37pmEH7HoZgBH3qNumet4=;
	h=To:Subject:From:Message-Id:Date; b=WF0rCxyQD8Qdv3nAaSZwFqx+09yf1DXxGpH+M9MkAO1keoiE3rVkc0+MUx2UdgCdoKRYj55BkOwTJ9agh80KkuKYSRvzAQGEzDcYBUOGw/cgk6sL3NumyWcTwiYFiga98SuOEVLBBGj0Vie5G72bFKJAh+vcRnkO2ZP/UBPLz1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2qkrsDp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2qkrsDp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C9CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748851793;
	bh=xmtF3r56mAlNbJ/qaxp24J37pmEH7HoZgBH3qNumet4=;
	h=To:Subject:From:Date:From;
	b=G2qkrsDpff7Pya6Fy65W7CkuG2BFsD6+OeG8wuCOuP56z2x8XJ7Kw0KsGGVRQz4ME
	 iHWFpWcpNGREr9n6KdcCTnP+j5ku9GfPJ1Gjjlvf4BHxziDcnX0E/TxsDpyqQn9QNb
	 jodTVaI9TfwWafBOzFD/ki7PXljLYoq7aLaF7L7GwsQl5GZubiaQI6IIIROJi67VD/
	 CiBY7qlQwO4FeD5ZLTKyLF2jgqqs/Ns53iENDGzVj0TNb0Qvi8/hKxRCRSswpnEKPk
	 EBvxS1AYxz4rjdYdE1857VFXLI2MQcxnqsrRcE7DdCF1sem9SWQUxR1uca7L3KASZM
	 cqjPBjd3D7oIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECFEC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885179357.18206.5278899202994479856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ec2bf761aaec3bf7a03632d1931996206b5e12701ee16b8cb7d516acec65fe
Date: Mon, 02 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748851793
