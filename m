Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F86155757
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771782294; cv=none; b=YK88vBMHa3JTEEWWmz33lLjAK5GGSG5ykm33Cqb5vCWSgv5x+kAeHu3UzdPddYTVgp03CiC+2c2dTOEqBzBAuZEQ5a61/cFTmB/sFMEwM1GbVHoQv6QH5F9kmJ1mtuHy9TdxpZep4oCqIEsNFvOwbBjAdrVYIjftIK+cuUAQ+Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771782294; c=relaxed/simple;
	bh=xjw2iAe0/6sOuT/cGAFPPA9FMKySobae5akqm6yBa+M=;
	h=To:Subject:From:Message-Id:Date; b=cAJohzsw/yp6puLYfYILQXDXnTAm0bNjOc0k7zFvNT9BQaRaudZH2gfo6DTSs5ULFXtZxCXlxWvrWTcuDHrsVpbDEbuKvgB6XEIOSFsEQWWCm7YxZy35mrclLhZ3NT2klcw/qxzR2oIau6haiySRD0MciEXLSXmVCpicjsvQ2gM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwRbJcQ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwRbJcQ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B337BC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771782293;
	bh=xjw2iAe0/6sOuT/cGAFPPA9FMKySobae5akqm6yBa+M=;
	h=To:Subject:From:Date:From;
	b=LwRbJcQ1UFItoezSYgLiNIWoFXEEtxFXyyV/MQ5H/n0TroxKvf+VlpKYVEWRzdyVU
	 M/TXO3Idmxus0fA0PenSnXVwlGnWHD0s2U3+hWR/KmvZi2y+i2ZuLceHtmVLcwdVdx
	 8FOwg5k1889wgeEmvSlatr1dJJhpcNzMVPQLfry91L8y57QQOvFpSQ3vd981Pir3rb
	 L7zaBTDCzd1K4P6mD8Tvn3/5mzijEo8t2EmKk9yynFyqUm5RV6/znLNb3ruJcSYzVL
	 /OjdG4ocUe4pvOfZTxbxgwkpyXvU/QSaz3D4lzL246kytNT/eX8ncqRsMmOATqVPr8
	 U651y3LgnXnWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4178C636A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177178229358.20876.10802497998671159619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec47fe3bd0b01c1347402a8545076cfe5072ae7124003999fd98fbb16ed7662e
Date: Sun, 22 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771782293
