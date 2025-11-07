Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257C1221FDA
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762492794; cv=none; b=k0HjYrCv1JkNEOf27wnxqHQp9Kyiw1ilj5cQRqpQwiz5un3q2as0ny/E8RmeuCswDiuqEp8xMkovf2XIJaJL2akAb1tGUy9MCT9WbGMRNcgx2lJXmhskFMzMld5C2IwDhC+CDRWJqaaZqjl+48+dkMzoQQVTIhRIaUJdra3Cn9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762492794; c=relaxed/simple;
	bh=IEAJDugGBDumJf5akrPxqkklBkwF0QQ7Abo6zukQhBc=;
	h=To:Subject:From:Message-Id:Date; b=fcMLMm7sDXfOmxlBdhi4u4yahaIExnnem5ghO/Qrx6jObDosZwqpUMWL24xOgn//8u4TbzZwmTtFM7eh41Fi8n+FbGpmtfNCg/vV9A7qinftmWZXis2ksrOkci/3gfS24hCP1IuC02gjezACfvJrUUBBpGMN6NQBgVLLvihTXpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j62U+e1u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j62U+e1u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCF1C116C6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762492793;
	bh=IEAJDugGBDumJf5akrPxqkklBkwF0QQ7Abo6zukQhBc=;
	h=To:Subject:From:Date:From;
	b=j62U+e1ui17NHXZs24SMvX7wUHAoItXABAlHVKHtCQ7OZWRvj4m6Z7gfiV05YKQTG
	 03cPHRrFMxRFBNru0v9/PT5FTkqCy862LWjNuU+tXSODgjwU4h5uCr1YUVjHw0TCXu
	 z2bFC8IFeQO+0u+l3Kz3WMSo4RZSQajR7YH/HXYDdOX7vaAI8CtLktv9J//zr/gM90
	 4mpU+FlZHWJhDwbSzeXaT+CfxsiMzaFH7N4DKxTw85Hngrla+JqpEtg1h0Rfv3RHw7
	 XbjSFSXoibimNsVq5UFQSK4iwDn89/6BiRQnPxpNUZjzog8p1av5tOBNxijp7jU4lQ
	 +t38YRPhymGUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3F2CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249279361.12666.3346970829614441076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4859eebbc09781e4557d96af86fa3cd132bc32c3de70e385166fb23ad45e069a
Date: Fri, 07 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762492793
