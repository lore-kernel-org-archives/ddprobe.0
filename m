Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC4B226888
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754813994; cv=none; b=ZtZVsVAVopC0zxsKiiZ2ZWBzqzTRz8q5ZnkgZpBRWo3AB0sIBEh3uDQ+PLGtcYzdsZ//GNzEWQMJHXIyUyjjpcEu1m+2dAcw4U97mUADnKEpH2Ea7chr7wHXgn4ddH4y4ZzPUmppSOgBfMFRlu4FGahQpcdyInCv00n3tNWvhUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754813994; c=relaxed/simple;
	bh=M/AIz0uKLU6vMO87m1pgA8hwiHZ9pQN2H2SnWgf+4r8=;
	h=To:Subject:From:Message-Id:Date; b=gBG2EupqdpP+gCj31C06GnYi3Nz3k82+YTdu59TUdVRUTCn9RXEBGHRvC5EQYn5F/0r1PCZ0ouYTYhukJQH4HpBWgG2jYpGxj4Ut9ee8A1LlFjIXhXncD7JDxLcETVmtDvgox7JA6RrAyXv3+i2MAT7dQ4OCOwyVwxz6HXCJWFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrrTcDp+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrrTcDp+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C84FC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754813993;
	bh=M/AIz0uKLU6vMO87m1pgA8hwiHZ9pQN2H2SnWgf+4r8=;
	h=To:Subject:From:Date:From;
	b=lrrTcDp+bzLwz60h+G7D3anmPkW0ouE7jKGYG2hZD7KU9Kyijb9Ww/TZ6RfexjdoC
	 wtdMs8ZUHBxEYi2plTiTkZdmXYllyg5Mifu7lZleTJ3P5ZfdAyao7kqbAxxDm+JtfR
	 3oAdqI5RzCZKwjNO1E3ZrQKW/8stigH9xMjn6f8Scn3tvqlpCOnT1Wcvtl3jqx39iK
	 cAVFlEuDNea4mDydPDC79ApmxuSupN9L7hXA0Vh5TVbUvt+ima8nptFaDd1IgBuZPn
	 5VW4xHy7+E85rKZaruzdWO3QqH/Do2RUHquu8a1f7Jahq9AsiuBpsGCjdp7iy93MlC
	 B//Ubn4VflKnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF65C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175481399357.6549.144898943690991242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278e62f97c0ac195bf9fec9c2e060be164c95f844f022445a92dffd8f28cedcf
Date: Sun, 10 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754813993
