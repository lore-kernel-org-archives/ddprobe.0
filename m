Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA9714884C
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775732134; cv=none; b=hxzkEVD8zSVjqqbeqWVX0LWHQCoe6Mp/boMCv7hNJ6ZiVb1Ft8KXYdZHIXqxDTVW7kph91jmZVhTPA2+NKRobNlyshMBniUHlaqiSmaEJgLo1L9IW+pExp7bQFrF15FIPY+xdnPgM7NHYuxCMq+nwDJdI6Yc/4vbBQuH85kutF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775732134; c=relaxed/simple;
	bh=5k1hHEks5enxOSKmaGTxEkA3hlz3PHMCZ0Buutv2+qY=;
	h=To:Subject:From:Message-Id:Date; b=NaYXwUxjSUJdG64BYCXxWl/Yvm4QMf2RgwUIkqW4N2dlmYAaFnaJCCw6fBDZPbN0z8EI00kw8XM0JTqIz+vMi60nm7ydyS2kvRR/hpcV4hgLzjQK+LUmoJHdnQK8gGjyNjFcqba/uWukt/iex8W+I5sdhVzrsy3HOeqy9iFLVhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snog6bxk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snog6bxk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDD1CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775732133;
	bh=5k1hHEks5enxOSKmaGTxEkA3hlz3PHMCZ0Buutv2+qY=;
	h=To:Subject:From:Date:From;
	b=snog6bxk2O2b01hzNHXNsPZQEeoO01vM/7SFG3XECjr2V33lTq5HzgyJa+/aE4Sk2
	 NT6vuMY4nSU083+Q9JVJHGVLV5D6Lqsr/txD4PCTVQHVPD/3PPWBGr7kEfuaEzlIk9
	 wsZHOYizOcZ/uzQwg4pEzUCeVpPHNfi7DgHKNzfyUUIhLt+d4NY9gMqGQiisEuEkFJ
	 bmbsLvznqLj44ZPBq1Rt19XDjwP22u5vvlg2tw6389mhjpFGgCdwfUXHK+FyjPVTzP
	 3ksNFcKkks8kz5mcJqVpsDEDmDE6SIGXio3uXuT4pgE4imdzXPlwe3i5L1FxvDG1R6
	 krQVWvzw347BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD921EA3C4A
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 10:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177573213370.17621.4924298440739251248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9490ae14ac0810a94bef103fee48808838481d17b1ce72df0f86b215df435cbb
Date: Thu, 09 Apr 2026 10:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775732133
