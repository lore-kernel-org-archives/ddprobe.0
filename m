Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF041C84AD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749779994; cv=none; b=g/ghH7uCEdOKAzElsziwn0bOdbhUGWGUWDOchP+dtvqFpR3TrP91CNVMsybPGuJzUM8FFqK2cchv6RFKxgfdl7OcUf60d7kR9egPWM4ooqFqZ2TCgNJ4vh6BsFflM7CPf5EJDdHKT6xDv5BHyAPaNS14S+Kbz1Nc7ucCdCzr8hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749779994; c=relaxed/simple;
	bh=tF6AgcAda5v5E5iJptruNABqQZrGFKDYmiLZuH0MsW4=;
	h=To:Subject:From:Message-Id:Date; b=Mf4fkFXpx3UNOJuLv5N1yraSy+fOz6NWAX/gh3RE5tRFCHDvoextRb6i8PaeSZabM0oPjroWkK5c48pVFR/2ZXL3ltgv9w/z5vB/9Bi2IO4SPOBr6VoK700MlAfSXWCzR0Fc2dD05LX3BbIqqte8zJMPdzObIYaMb+sLGq/R3Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mK07xTtE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mK07xTtE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D8BC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749779993;
	bh=tF6AgcAda5v5E5iJptruNABqQZrGFKDYmiLZuH0MsW4=;
	h=To:Subject:From:Date:From;
	b=mK07xTtEzaUSjsMi8crcBj2UVv+L9twb0AE6l7UWCTIgAxiVkY6YvXJt0iqkJYDta
	 a9UJH4G+qDECJLtYL6lrCnKU115SA1ut9eBeXMFM75WtxtJ6i28Mb+KFR/FFMVt51O
	 gncHbo/S2qHKlwVmmkXP74B/9oGqYRi1Bwg4kD2bA8WbekwTPl0UfQkh0hl58ruGxD
	 nDvlmVIp298NTGrbmZIf7S16e8UQs9P13nDKNYbQxluEsVEKHms4tRrleo2yKHBGYD
	 QcpWY+S24HRmJgXSeBbd3Rdh0oqO+X+14Nuzr2twk5uBzfaKxZK5efXYPjSYcQjUeW
	 SYjOd5Uu+xz0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956DCC71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977999357.18647.2716580295143204808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f1a30e045cab0126ed394656b01c9388d73f36641711f60a3966017ca96d26
Date: Fri, 13 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749779993
