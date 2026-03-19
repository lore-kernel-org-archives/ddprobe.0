Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09A633E120B
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773958495; cv=none; b=JqKZSFQ6Qjc2yQWtFjf5wt565qSm7a8tAPPs/klXpOYWQtdLwer70qsbJWvagEjnXEbdj3+h8EUXrR3eZcMrX3GJ/S1Jwm5cN8ig8SG3cVUwCvcXbWMz4l7NrU1CwhGZvwZMhz+Dq0YRZXDbXKhgH1NKSBgUS2u8RF0CwWKL3dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773958495; c=relaxed/simple;
	bh=aOuqujAFByPaBE4JUCDfs7Ey+0LODCMgEGbGJx+s0Uo=;
	h=To:Subject:From:Message-Id:Date; b=Qgzy6vDZwSFhkQTvUMZWN0jhvhvn+Mn3AQwibFZ8a7HejkS/+M8u7mZrOzgQJ/BcRU+mtxzJ6LuTKPoiqRzqBoFj/Ns31gHOcegI9Nnh/M7LE9Tl2+UvlFc00q3TwN4gzcdRSXXzdDkdSrDxDqtaxbwZPu129KUcNcnVYhEwL7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojRpf9PD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojRpf9PD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C46C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773958494;
	bh=aOuqujAFByPaBE4JUCDfs7Ey+0LODCMgEGbGJx+s0Uo=;
	h=To:Subject:From:Date:From;
	b=ojRpf9PDgo2GDSR5VqvQAPzFeLwbkJIHDPEAeSrmQRWl2KXEzcOUZsiuStE30pbmf
	 Ei5t8pYKI8govJ7nOmVbJuMdWg784ccseO+UyvnxXWTbiRyCaO10jawqzEGtcvg0ch
	 2e2Ta1rS6UxiP5kmtQ9CLbf+1HKMiOfZQstdxd0lhB/Uf9zEj9l2LPpoWMXnTdbghv
	 pLryQDibRUumsnNJs4j+01/a0C4VxioV/90NfA8qNjS0AE7uvzszJoDTZL4T7Nv2pu
	 hPjErpNERIMXFzqshs/YdVLXbJUqHhY+cTXnnrRYgDyQfcdWok+vZOb1sYnakJO097
	 yoOJmMtNvKVrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F32A109192B
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395849357.18834.13842330155330051082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae24b8a6b3d4a05d5cbabb18ae658dadf2ab6a62d49f2096f9f375a229471320
Date: Thu, 19 Mar 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773958493
