Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FC8210FB
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750459794; cv=none; b=jiE5G5EhhsfOi8FFW41+IgjNa/JVxTOjYxmxtfVNSb3o8QT99y1VvWDwSBkZxfM0KOcqW16V7OiDl3pVnBEJhPLwB7w0u2eYpzy+s3PwfmcypicqxvnTxSRozpnRXws007eviDaPW3kUyLjkmh9Qehfn5yDQj14UnyyOB8W3DBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750459794; c=relaxed/simple;
	bh=l8uMI9ySP63Q20S4Q8ooxu/iM/PGyT3nwZOnA2GMZQE=;
	h=To:Subject:From:Message-Id:Date; b=n4XO3NQ9kBLnNa+QleQWsXCPjrCBcQRr1fa4jw/nGjH7enu1vecziaRU6NaYZBvVMEe24xLMzCa+3WcYVeIufjwWdXDeOf09OuRXSqLQYfZ7bu5cbsZBwrd3PR/z4swRaCx7UVZyOrrEUTdGSp7Nzm3JBCQWK9cTwifY4//rC5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgt1iYqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgt1iYqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14B7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750459793;
	bh=l8uMI9ySP63Q20S4Q8ooxu/iM/PGyT3nwZOnA2GMZQE=;
	h=To:Subject:From:Date:From;
	b=bgt1iYqXgUFpYfrHHKeKvFkXCjC2JMxfZlEze/01TVFa+3WLNgxrRI3qaqIcdSgd0
	 orprKVgSdal9eXfcYbAQat3Ip2o9IZSGWPdTW21ka5yU6AQEuBl6os6+Ld1aNVUq5+
	 JaClcPl0U2tGC3RemXbGwyn8aJA8gd0g8c5iu3kZAVb262A1FOBteNl2FxQxu8oHSd
	 Yd+Sj2iOwdD+mx9o9GiYcwIvrdnRM+vTR5/yCrOGM3/LIeYg6yKqN86gekrU2sbBfd
	 yNQsIg2xFczMdaQggFnl7qgw4+aNnSXVR0OnTDjw8mLCggytApdMTWyigKraFg8zXp
	 yHoMhxMvlKZRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F447C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045979357.31976.2497775139454744384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d60dd24e377400a4661f67f65e9417a0359fdc609005190831985c4648b748fc
Date: Fri, 20 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750459793
