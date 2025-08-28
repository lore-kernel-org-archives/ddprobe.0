Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20831288500
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756415996; cv=none; b=CH56xXmq05JXUWDtJZ3CiZB8RDYmph2hKnCkZyQNZWpIopaRfmXjs02egPOcMyAF2ihMtjWghnzufMbrsg/9U0x1a+H1AdwpOtS9Pb+ySxbQnQZho7wYzBZkmrf00QnLtfjCjdPUHe7Tx4gOqVU6nl3RJOUrBykKrPJEyyOQZic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756415996; c=relaxed/simple;
	bh=HFKwc7VCD1n+jxiHdPcGSHTFwrOtRr5vBh7+tu5HPOc=;
	h=To:Subject:From:Message-Id:Date; b=Y2CV2lcmXqgaXxYD7/uq0qVJwUUJfwwK4hgqqRAmoBiwKHbak/JHxvzOHBjNt46gojpTVJmG16pCm/9XAOdjufy/YEDAfp7wi4R2bLjCFtaMrZfTi+T+4SBBGvIuJ0E6eLKBp3F1pdfwTWNE2jIw2lpXShWmCguxXDY5TLNiWo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDRU/RPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDRU/RPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3495C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756415994;
	bh=HFKwc7VCD1n+jxiHdPcGSHTFwrOtRr5vBh7+tu5HPOc=;
	h=To:Subject:From:Date:From;
	b=fDRU/RPT/9UmFfnZaY3HiOmUR0wHNON50x+PHgwf1ck0CGWiWgwNnm8HdkaMu5TcY
	 AfWsCBrDUOWTYQ7gcnS7ToLUvdY9HEDwrH+nIPDAedz56rCfZTngSz1NfaarL4YMOl
	 MnCYYAf5VxHPgNSG68vQwX3Yjw61mqYPxcQfbrTTqEkkJ6M4SAtb3ha4bBjDZhvTfW
	 t6arwzZC42Gzi1Bd57KZZyr3XhcKNBv0xOjR6HWG4/2usu4Px3IboKYeVv/7X3lSDW
	 tm8czthCoXrj/bJbB/P4td27DD17aTpUMgk4Oeu30WBkjJZ7O0CIRnpQjeNHHTwCW4
	 b7wKYr2+GFaoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E79CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641599358.26344.2222461444793244901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8fd80a76adc214a256452b32807440c1532bbed3641ac38dc529abf18b25ecc
Date: Thu, 28 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756415993
