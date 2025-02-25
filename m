Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A18A2904
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 00:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740442134; cv=none; b=pXVbgfMhx/0pdG+E6+E8Ihtb2xgtIPfxxPtXmvPceN0TQ3YCrJa2qNnrwZ/YaGN1FJ/5lvTEWukX1WBIbpGBdWdo9nssNzgxbc7qFituzxR0Hy0inKQreKNHh9sSvzbt8x/qkiPn1w8UKNgddg1M5FQFwCLXRE1A3tRgTPkNmsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740442134; c=relaxed/simple;
	bh=X3ik5VuXItir+cSbf6hADG9TmBymXkLxc3CS2qtHsJs=;
	h=To:Subject:From:Message-Id:Date; b=jKAP/hJP+H1FzJGuOSeK4zcTGe36lBCOHRH0GzUDDOou7FF1YCL6UjHXLWK1G3esGbKLWyTfR3YPwNx0puYb0BJ1mGILQBl813/g1W/oXQUQMn9JBrnRWm0JFgzQNfN7WsxpNmE4iRA0T+52KAgFyDRzy7l1iH2HAyH5zSkJV9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUvjyLHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUvjyLHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8328C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 00:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740442133;
	bh=X3ik5VuXItir+cSbf6hADG9TmBymXkLxc3CS2qtHsJs=;
	h=To:Subject:From:Date:From;
	b=PUvjyLHT89nj3Pqj1sQ+VfE6t3KmrhdEFg3DYLqjBKBplMCGrRjtQBUKsBFX171WE
	 EIwioBgbTlz9j69dbgpdJoQxfGlD8JUnYWf+v9ClMe2OcfzIIljgA6XCaCyxFa99Zx
	 i1GAKKr8ruIyQbOPeW2/Tnvoit8hWSsXfhFkyuIu1e/nQkmtr+Ba28/HeKACjvC0EK
	 f8lDNzrDnlCYQtCmcog2I4R6o5awQs4ln2wUvbQRv5Ch0k8DDoDjPvFKa588wwv3+v
	 /lKczFYirL7S9r4LKkArC+Yk6RVC1idALP/B2coZmsKyhvR/S/Zd843owsyXvXoGe2
	 kz0S7Ogz+IZCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B29C021A4
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 00:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174044213359.2796.8515095201675417543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 579156b8680b086b88652bfb53fba70cb104845ca7c8945dccded641bb673ccc
Date: Tue, 25 Feb 2025 00:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740442133
