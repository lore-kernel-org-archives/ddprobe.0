Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28EB9126C05
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750835994; cv=none; b=XESYYB6l7QdvCQ6NG2xq6kJtX9APqwo4+o3XNTLAjzf/GL7QdUvaHNM3c85BwGnXmMgLyiU3tY1VuH/9cinE26teEHh8ZaEkvUADqV5vxoxv6UozVLtz5UuQ0EVUJeFgEV12UOF+v8rQzhORG3mvNif3BvgI/EBjmKNARn4KEQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750835994; c=relaxed/simple;
	bh=msRj7M9+bNDE8HMLdYNwTtr4p6BDCoLmrtlll2qom8E=;
	h=To:Subject:From:Message-Id:Date; b=MhQlqUPyZtkSGhb6kPz6QPfF1kW7jYpfhNLACuNVFclqA0UWoXIFiEJY+8zys5yZjZpno+rEEvrIBdVr4iaMIZ07UoYQicUquiDQLaDqVQwbEd6aG7AsnK3btVMGSQIIm0kBx3dVZNpLN64uPD+F6F30uB35/jBAsGm3tWtVx+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gJaR6k3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gJaR6k3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12E8C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750835993;
	bh=msRj7M9+bNDE8HMLdYNwTtr4p6BDCoLmrtlll2qom8E=;
	h=To:Subject:From:Date:From;
	b=gJaR6k3nqo+CyJ4aQFB0Q/pcKOuiSL4fSnxYPdF/lAp7RP2wnkIs8bxlEhxEzPAup
	 zR/tU3A6Q9s88KBJEB1jLQw09rS8cP+AxXA0uxEpPJVLCDvYbGx3KODDEtIc+EGWVk
	 I/Uxy+AdL/Re2NK9x7SPNYtYa+Ab4QQOPU6t2DVIDM8OW42jBk/HY0y25ssz4i8MUC
	 ixlGTohjbizp/DoFDtCy6qMH7fFlnr4dBrznXai2MNFQ+bQGf9en3pHhWpLHE9TfRJ
	 0DTFyq2Cu2euI9BOYvUV+F0AB3f+TF9f3ooQ7VIsvVQQYzyM8ukKgnOF3M5W/sxQ9j
	 Ln56CMnRSfmkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F6C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175083599357.31150.12893646901805944524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e0960b5213537ab0e488770fec97246e09bf6e97cf9c91550d74632738e9990
Date: Wed, 25 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750835993
