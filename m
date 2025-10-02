Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D30A12C544
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759431594; cv=none; b=Uw5uc4Po5mhgp5heqGSKUaH5dSwqoj1K2x6CF4yZ06r43QQRWUHWw9/9Q92bpMCHcdOaJMoc1eL8cD6oUcF9tqN10B3UzR3aM+bHUIz56EWeBKgb7b+fZmCyeeBPN5UuRWyPVpnbcR7EBy5Q33Gx4gjGOzKo9is4Wn6p+DxeEPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759431594; c=relaxed/simple;
	bh=NFUd8IS0Gwwogjm/Gp9QOAH6PXEUXKLFSAiU8jwh12g=;
	h=To:Subject:From:Message-Id:Date; b=gc4yygdSwM1WIE/mtN0OTuGuAYuKBt9+BxHu1ak7oTnFmfhRvTnynNY2/7GjeplfQD106dHicu8meHzi9WM0yW3RqfO3xmwgJkuqzekpNgeQ1OKUcLmKeibinGwKsF7z0a/UK596dcWYFXQ5K9DSUJfoAPIPl5/TMj7yKybSzfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EITmvkFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EITmvkFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18FEC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759431593;
	bh=NFUd8IS0Gwwogjm/Gp9QOAH6PXEUXKLFSAiU8jwh12g=;
	h=To:Subject:From:Date:From;
	b=EITmvkFRJjp73GOYNdqwDmV1pGWFq22RhtrzpP0lRz/XM1UWKZ2NVKdZIAdpB9/Qf
	 wVyJFL3Ess/umcWrCYvHS7S57tX8hDG1M22xHuSmD14LfOdefoYel8gjZ+OXoBpuHY
	 3WjOJYc/3yM7uEVQn2Pm9x1QBD8rG+MVeDLypNpJjvs3oUhm+lI5alAJlcUTlZUkwj
	 PSRiZ/Py86MHP4uHNMrAi0Q/JWKoF6QG55imxD5nfN1hbyOqgGs4LjaLbqwjexuvn9
	 641jir0tgUtrrl90uHxHqhCKiUqokN3cVtcUhM7OyjRWvkeJhMqNufLd6qYe8IlFyZ
	 CQLi0oy2FyNRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F045CAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175943159357.3791.18091155417472566841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af610f1b3791b05206767f42514916cd02ca47e6df562730d556863bb3c43ce
Date: Thu, 02 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759431593
