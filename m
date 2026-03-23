Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1EF3B775A
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774283694; cv=none; b=XRYqau+Uii2SgQYb15Nd+4RpoOpX+6m4Fu3FcfHrHL0ZwgAleHeOO2f0kfbPSJY6iCyBYg11n6tctF/Xg1dd50ok31uaMwJIeOzo60diTR1DBGdw9l9beuiAFAyJb8GkbDLzlkGcm5xoXdyMlJeh8uUX1vUBVHkI+cCb3tJMTZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774283694; c=relaxed/simple;
	bh=E/jawKxDXE6hkoBCGu5fPsbNT/bpViFtIY9179Q3nSw=;
	h=To:Subject:From:Message-Id:Date; b=o9LyI/Y/XfzSQVYDYjchgd/gHY5r6i3b3AxdrQFaUhWzkIhHYogbEn6mIycGGUU/m5h9Pp1HpfLNaaMe9XCSxTWmBJwkDsmBuNhKni4DUeHRZTZkZCOCqf/UVYGcq8aB2z2M0HD6kHSVpSsNxhTkH0Uj2D/MClvSmrHneITup00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbHkJ0/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbHkJ0/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4724C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774283693;
	bh=E/jawKxDXE6hkoBCGu5fPsbNT/bpViFtIY9179Q3nSw=;
	h=To:Subject:From:Date:From;
	b=tbHkJ0/buevt6DX5i4E3Qsa7O2drMgeWjrXL8lN0rEz7Z7rPxopYAIUoN4RnRrCig
	 EfcwxuSfvZLwkbATEr+MSiWEQssqq+bLpUpJphPQaiYpXrm9iYAQJ8f34mnzT03FuK
	 nikhqUA7ZkihLM7pG9gJfBTNNWkJKq57303gdmRwLaPOQFbk/hpoQhxWsq7G1BqBiL
	 A6di9GRcdvAJCu1VV87zMo1hFZ+QjCB6NWS5s81N0AW4vvcHkYe3BYsIp6ADY0X81g
	 tYzhOJ41VYKHR+n0lUq2GtkkSygA0XzCLUTHt9qWsr/um3Cawk9g+lb7oLRrHLJB8H
	 aQItXxZPAH5kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92704F483C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428369358.24771.13717790451464714739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c68ccc0bdeae71132bb980f4c3d680e01467a42d6afc0c03cf72fe07fedc3cc6
Date: Mon, 23 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774283693
