Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EB323E358
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787402434; cv=none; b=C/htpXyQVZnsnGtPDaQPNIzioYN+UItwoU8eLCFpZom1N49nJ8jABQYQ1Os9KRXXl6ifg5NEEm3nzZm2von5ys0t6JCCycGKt0p0P9pX+k/3WONqR//9k2jIgUOsXsWQ4XGBJwMpIib2SEVHz9hX8PN69VXpKYN9MG1sRyNS+qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787402434; c=relaxed/simple;
	bh=QyQtvn+pYEF0YTn1b5RyhQxtmgBBHGDB6XRNsQC2TKU=;
	h=To:Subject:From:Message-Id:Date; b=XhwiuP/7Q/fHLWjMVLAJTGbW1so1vCpU7tLiYWRf6TwKUJGi5Cu+j6e6ujvdaUR4n9e1LKZ4B8ProrD+0x6/Kn9ub0Z7i1d6qGVOtOYL5r0xltTPa544N62cSzxXhF1+pf3O4W3EigbmFQnySvMmPwrkLyTsAq3x+/95V5MxZ70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8pGCzHe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8pGCzHe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D306BC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787402433;
	bh=QyQtvn+pYEF0YTn1b5RyhQxtmgBBHGDB6XRNsQC2TKU=;
	h=To:Subject:From:Date:From;
	b=q8pGCzHeOvwkgE1w3wLnwKkIQSknKHipVlyuJvKxY0VxIGvP6pPYP4MH/H4myIeU9
	 GT9zRjcTD8W7D5k7ArjWlZaIFikpc2uYX/tcwTE4uuV09S/ntZTVnMg/FOwT3Yk8gO
	 sVMWD5Re04VaGgl08OzSLwqETiLI/zisWSArjg+A923JMGd2SghhzTm3AppP2MMCNt
	 BYm8z06islVk+oGUk6HkAoqTJrRk6/LADuBCLUK7+JTr6X1RiVGovRjEiF49d+reET
	 ttWQjWCcVXdH1HUhrw6h30UCIFkXZiM22lJS6dZaXZ2tWsD+5u4syR5+3yDFsjKArL
	 35WbHLPuB7Xow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8A3C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178740243370.3362.6983890764282811330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b29caaa524672bc4b10cc704a490497385dec52fe98a36904b10fade762d0a
Date: Sat, 22 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787402433
