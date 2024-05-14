Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5273712E75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 13:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715691743; cv=none; b=BySOLcDo7kxmwpBSSvouQghMOYGiCUqtsmVYwrgtgKiQgU1DVgm9aZisJvGRDzJCy+EVDLM9sES+ZP0osfmPl6fY+p36JxO0noDeHyN98InG+w1iR8cYyWkSDtLHFytUvphlkg8hZrWigYYHInbvK8ue25DSejkWk9fWgjJ954U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715691743; c=relaxed/simple;
	bh=sQjiOW6ED0Mfa450ERmRRK4no0eGMU83QmQbFHGS45I=;
	h=To:Subject:From:Message-Id:Date; b=Y3z2IFkAGEONZIeSOVqjCkvUNYiCiWJOWP4J6oGqdmoSdttiLZZF9sF+OE3PywM9QotPJIRL4JtjMR9UHYftKymOC4H24VI23CthYkz1Se657pCb0xRnwbi7EI8X/DLsSLPJDjprI+FaxTZ0Jhd9wIMX/rx/EerFxdK7A+L0xpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUGysOa3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUGysOa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF649C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715691742;
	bh=sQjiOW6ED0Mfa450ERmRRK4no0eGMU83QmQbFHGS45I=;
	h=To:Subject:From:Date:From;
	b=aUGysOa3jDkaNg/CudbhXjMLVcJe59fDY/kV8vUR4PztqNGQd+UstYtgmrIv17+F0
	 GgjstYF2jOIZZ7PcSyqDRdefu+dDRDXaCJJGf3WxmFKIMPvs6prHXRZCgEDLSYL2++
	 +ndILdbStyTL7+iE+2rOzMZhrDhhZq8bUC/yWOeHbY+0O1dLc7hj4Ldy/T/hj8X8l2
	 EROJO0RB3twO3KWD5zYChSsuSbv8J05sVIia8DWiouNuM0wtMhJ0UqHdfgK4H96JlD
	 H6oR63WgdYgKv/BeSu/0SkYI3Lxa8WfaSweMfisKoLHBuy4vacqZ8t2z9e6J77PLBP
	 JZqAjHv6YYQOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC475C25B75
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171569174276.2095.2440985639189681034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09ba471759f320cd89f0655e031c043623954f10fb1970d452c99af095a20243
Date: Tue, 14 May 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715691742
