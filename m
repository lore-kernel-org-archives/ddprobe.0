Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E09C3C10A3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785273634; cv=none; b=Rz2fEHXJZkjoDtn0wCFsfyu0FME47VClsCvwL4AeAW6z0TIoPinI6tjODJWYSC30kLfg40FFR2nB03k33sD5GJP07rRmM6j10s14/ddUJrb/+TyUADz9+Hk7gbjfQlxCoFuP9LnK8nIsbLu4L4yPCCh5UsciZ64CtXq+0sbtKX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785273634; c=relaxed/simple;
	bh=waghwPppdi1o6y3GU+zOaMIzipTFkp6iYkTf1oelNv8=;
	h=To:Subject:From:Message-Id:Date; b=CfoNdyHJgN/R7LRywplkQts322RlO5wNuctDL/grKI8yuLphCA5qa4gA/AEgvA8XLD9Nn5MffyT8mtSAvS/Na++2+HgofZaR36gTxhxB4tYlf5PFQZcYaVWuiPwL7zWPINboJQdBp1H7u8MzVAwl+NatReiHmUiSt+Qb9jHT5HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jy1TpQkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jy1TpQkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF619C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785273633;
	bh=waghwPppdi1o6y3GU+zOaMIzipTFkp6iYkTf1oelNv8=;
	h=To:Subject:From:Date:From;
	b=jy1TpQkNhuJ+ohOYlyWkGXBITBCJWV9hwS8xtqfs7XoDyejJ6pJaft0figt5jAITH
	 5i8Cm21C2Uj/EqIaLj/WTd7kzO4G1GUHY7O+AwuG8qtBI6OoFVVdn2W2eJZRDYPJI4
	 A1hHBxirei3DCT0MHpSUVeT2pyjBHQylDz+/Bd73TpngmLwrxssE2h4mfCdSrKA8q8
	 83BjWU7NNhPUv/5NYB6b6cs/r2J5R8H3n1yKG8wc1SKZZfWiK03Bs+P7XmHEiVtoa9
	 kjr0ipaw2SKs2lrU5zLN4EUJOe4e185uKEGS0s+7hOqg+ncyrwJ8DPYXDOr1gtK+qn
	 16Ogl/2bHCJ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3F0C54F51
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178527363369.25731.9060442868287275619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 404c160742626ded0174bea63049854a0ae441da5077a4292ea65e049254b818
Date: Tue, 28 Jul 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785273633
