Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB0C2110
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767029634; cv=none; b=JO6AEUzY2Q+uPP7Vpnz8vhihYGT1T7f6161xzIsIVZ8zuRpfTpO1KKnln/dvBV6gxkGkzxo0zD4cP9y7yytgJ4ddClK2nizvirXNpqyQEf1HQuZoKOrBmoF6OxE+p5CApixMwtnvKKbmvzbgYHE1PsDaFNRQagE0paBDn5AI0sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767029634; c=relaxed/simple;
	bh=USyfL9IjwDW7f/8kvZeA39axD+Lc9+p1XpPjMx01PSw=;
	h=To:Subject:From:Message-Id:Date; b=Kb9bxZN7XNp6Qs66Eo7Tp9Xl6FWMm4RF+sAaKYXAtu3WlmTSra4/9+NiVq2n9zbzbKPHl3RHNBspmv2zUCOSdlS1PPB/avpFotdyFWgfHUSrwdsrn9pTFhwmiKRJ/kW6+kATUlRHQHLTmp9OUoHQYlnMTNfaxkdmu19VgfIiVGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQ1pJTn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQ1pJTn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC248C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767029633;
	bh=USyfL9IjwDW7f/8kvZeA39axD+Lc9+p1XpPjMx01PSw=;
	h=To:Subject:From:Date:From;
	b=mQ1pJTn7dMCmYV+9+Q2f5GjCXqHx0UqiNF13rRgH3p1L0xm40U83yDPFd9PZTkOQq
	 47BGJDOpiQvYuPj/noJgtNhfDRDN0VfxmWAoOzt1FGsV615aeoSSyvPYGvD83c3jNL
	 xMvWEbDWOG+zg5KOl3MaOkXJJcm8oeVpiszDKLcy3l8T3HFDjPmTOxkHQDAc2u6eVu
	 Clh0VrdX2PEYBAFbM//b2VKgl5GnoXUOskjhhVrwSjEhlDnUOAhwGqE6lJPDy4ig7L
	 8zQVin2zJoGgypzNw4TH82Iuilxcoh+Vw3hk+chcmjXSPk2GiW9885ji/4ZDJOdO/q
	 +tI1fOnn8Ux6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F905E92FC5
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702963362.23884.8230173623269805858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b26a15e351b1725fb04e8aea19c5d148b240534b54b31bcdeadb2c79d2a7b9
Date: Mon, 29 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767029633
