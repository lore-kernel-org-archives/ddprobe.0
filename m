Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADE241C28E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720855224; cv=none; b=LnUooyJerkdpPrOaQiIRZcARJBdpiMydcK6DNruUgW9uHzLPDFOW6Ico0yAzvdUenWiTTXcrRw/+tZjetZWHS3jPbuR9emJtdvhw+MZun/fWY6DMGfogQhK/eT7rkecJ/l/jbJv/Nu+SydTrfTZ8vEuf6BI7NGaqsWK1uIYXDWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720855224; c=relaxed/simple;
	bh=WgllDAPy+xc2m7P1gXHYSuZInjQt4a4D2SE7kOY6QvY=;
	h=To:Subject:From:Message-Id:Date; b=XneVUP0a+KXBVloJnsOE0tntj0LwRO7QIa/beN2XUbiO/5AWby3iQAVIo+YnMRp4qq0O87oCYfb575zcO5U8+K8ld9kvZmUnU2Q3Tqye4KAiYj9LC+pBBC6qnwuPfehBqY42GD1f+5IGbGGq8+5uQqWMufa9c2oCV/YTZu3cEsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+6vTxht; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+6vTxht"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 19BB9C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720855224;
	bh=WgllDAPy+xc2m7P1gXHYSuZInjQt4a4D2SE7kOY6QvY=;
	h=To:Subject:From:Date:From;
	b=C+6vTxhtSBL0orapTiaCuF/KHkiW5Fdg4BEGsX2wPag65bj5hCjNcP5bv+iyb70FU
	 qSbB9K5lXgWpBcNBwSTYRkJbgMsJObMWs21xAJ03hXT4dHT9LBTbemukYg5h7mj8uV
	 IFp6H3uiJ+y6ihA3YwfUaWfqWOd24mWJ3BRtMMRGNScFIpaMLzqmVfVzO3+dVKqwi9
	 E2dneBdwdLwqpml7zV+iLHnpShK23wPEzOZwGUaFU/Obn133Zf8LSf6iS7iE4ImBt4
	 kCgsvs4skWGpipSpZKvU/RbprH+wajG4ZBjwfJeDrNy7PClqZsz0fHaQ7t2h4T3UEs
	 8iHjzeq4f84Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9010C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 07:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172085522285.19799.10674234594630407195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d861a7fb9ca2f80ccfac094c483a5a0d1e6a3bacb33edf9da9b79a7257a4c72c
Date: Sat, 13 Jul 2024 07:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720855222
