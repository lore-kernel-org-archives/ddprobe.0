Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EDB275111
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756504794; cv=none; b=kua0dXrGArxFWgikGBBNDxvH6+9WtoiHe388F1CkJiPmOpNo+/b1681af6kDiRhQWsmikpIAFzwM5U81928Yvcs/yR3kfC/FKvdsQ6kTvNWxrYeGZRGbQfpx2DQzqhiO0iluFtRIO/S6daHJ58PcPKnY1gnAD9neXrkjknHxWCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756504794; c=relaxed/simple;
	bh=IwSOHluzYmlQ4e7Qk68vZgbLDNFieN6EOfWSjNBxbIw=;
	h=To:Subject:From:Message-Id:Date; b=RSGcRUbzqWmHyjyFE0TYkUTxdz3QkN1YpoVdp9CcpXQyHiYVmZWf/sYc4mHbD+qxgGOKeb+5je4x1fexCID1zdgbVKrHWgFO3kYjSw6gsNPs10Y+cUn9Pz/y5NTv6ESolftzGlcj6V+lI+l8AC0v5OPQh6NfWDHKkweQPHoO5gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udTtOfPL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udTtOfPL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDBAC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756504793;
	bh=IwSOHluzYmlQ4e7Qk68vZgbLDNFieN6EOfWSjNBxbIw=;
	h=To:Subject:From:Date:From;
	b=udTtOfPL7kZ5oFhbbNYiviIY+vYxpSBqXSFDuugKzZQbHRDxVZeQO6IztTyxgp0cB
	 XDLziiuPVHdilgmGT5/A83BiieR/NDNAHu9raos3VDT9zbHK6p9JKF1yNlX33Paj9g
	 odnFs/Jrn+Eyo8CuZeDIJGSkKpvO97Qu3QYoSb8TJjyxrO1+rb7F5czcq/py/imhCU
	 FDBis7ncx5tH7Wb2ZPJCuxU1O/+iw710jnh5aq0w/wGSytRCi7iPtd3dgYSKFuyl0D
	 qSHiMvnpZ3n/PDZyv/KtQ0iuQp0ugUG7ykUpJ7cCvW0w22ihQ+WD21QyBaFPbqfIPH
	 puVwV5jgMh/xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B40CCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650479362.23329.7491896650531380329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c02fb94c5d44b9dd12fb27e0e627e4f5c0d0011024bfc7ab30c973eadf2d3c
Date: Fri, 29 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756504793
