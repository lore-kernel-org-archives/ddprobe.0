Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488972BCF46
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786644634; cv=none; b=tJdFGK8BIpWZXocFnp1qj9udzZ9r49eZ2IZJR+bQqolAjtDgEbEeL4VXcLrWuADRsWxDFifCLbaW1gIXqQ2sPsSH4rvNduJQi2UX3bH1r6pSwzCRf+/3uP+XrNsSa2B3KS7+fOwwEVzOfPUAsRCAkL79K7xLe6H5Mjl8TShT25A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786644634; c=relaxed/simple;
	bh=WOSKOisr7iuOgRkxA7dgiKtarXqm89sQFOA/BgB3ENk=;
	h=To:Subject:From:Message-Id:Date; b=pTagI6HG61UwpOiqBG7LN7xHFi21DIXY8tQjjlZJ9TpN75WsrjLNlR7aup+719k+OppswvQC5OYLbs0nZxRoXFUF5IVWAm4vYvmpAmJ0QnoxqYAuBuGGq8skes1TlUyDQ8fqAK678xcgdKWBKZZ08In186vQFs2kTtfBlxzu4YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHJ9I7r5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHJ9I7r5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BD4C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786644633;
	bh=WOSKOisr7iuOgRkxA7dgiKtarXqm89sQFOA/BgB3ENk=;
	h=To:Subject:From:Date:From;
	b=QHJ9I7r5twdQ3ppoDZ0cTWOXuQ8gwcsuzWtYqQaEH+4SeEAhNYTcQ1k3Pap6mh0zl
	 nZANhOdOL7J7H0MDbcFWZWYew3DMT4M5z1S9IVfg8G0ZHWSDjNzH/JH9T5Ktt+SCXH
	 foeuRgorRNBATJ6aJg06qnJaRDBg4t7YNYERRudanMY7+x2cDMaZv9f8e0kHqEPrPA
	 VHKegtFA13/YlNm4Pjg+8EPvtcQFNWXamQYOIcEVwBDLqX6+jtGa7AeYipgLUvEBAq
	 tWrCotKFaezbfCbheY8Bkjs48GANpKCJj74ubw0T5ZtLzCN3RQf1hTtmnKXn6zFgNQ
	 iRZtTRPL0mj3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9A2C5CFCF
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664463369.31774.3125518357448394411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da15f77a4b572268f2c4819930486d372f6602899c018091203271bb9cfb0ab
Date: Thu, 13 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786644633
