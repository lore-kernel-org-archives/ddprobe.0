Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F2C2874F8
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756901394; cv=none; b=uDY6qW4xaRmq/YbpTKuGmBFGI7VM0wS9KBFitAQ9Aohc0vprtJSLklwosHkFlJzoWGlyYNWSWO9JGDNQ4xslELS9DnHhfuG+v+9kxCOF16TgKnvuY96rjjY5E+Y4oxuScwkOoFfKcIJi8bhuPYgNupKiA63eS3WxpAag4Ft3cPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756901394; c=relaxed/simple;
	bh=Ugs5rcvG0IWse6GiT73ulvRT47Rjp0JBDkJSTI6R5BY=;
	h=To:Subject:From:Message-Id:Date; b=nvKxE6K3BXjXdAuogg0ZRhLAt2OEfIDSWlLmYru9ag/uNJc1PzU/32j7PW3UM4+/W7qz0CqNmTtyF7M1gq4z/suleCSi/X9xTERCm3ssNWBZjKAbCTmzPerInC331R9SnQz1YYaXY9yai6QuE9/CCe5zGbPfyEaMgIFap9mxqd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nb9d7Xxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nb9d7Xxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65C0C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756901393;
	bh=Ugs5rcvG0IWse6GiT73ulvRT47Rjp0JBDkJSTI6R5BY=;
	h=To:Subject:From:Date:From;
	b=Nb9d7XxfLmNcTvSe/a4DXj0tIqZYXs8M0MwZholr93CdNJxSU6Q8D5iNJwPRMaIsh
	 P1oWVQJKrGo5f6MyPxT42yJMpWciHkPrVSA+5dYxnAwpphtzc1fwYwium9VmzKHpap
	 lhZkIvqv9D7VuOidPBc+2s6dFgGV16/qG5JGxpoktcNyRSNSUvPJZELWfcaWGQU9RW
	 o6H/EJgYn6Z5MrlDLVKzHbS2XgMTxEt9ZEfFgD0pbaQ7uXRwFTz4YU1WckaC+qDrst
	 p/NRyVm/gSwsU/8vaWWh7evWDUB4SD918wyfzXDVQBwzdUnicJlrg/TLzflZ5U1ue0
	 Jk250kq3zPjKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5BECA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690139357.17183.572327693355538739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad2847259485aa3345fb634bbd3a18caefa9234b0ac2c08dfd87cabd915e4db
Date: Wed, 03 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756901393
