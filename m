Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1FF1B4138
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742510994; cv=none; b=Y+SW0EAMm6iVx7SwmEghdL7WpgsTv1ZV0PF+1eSMe8T11C156mock0U4GaVV7nisrYNEu2DUP97K8f/1bxbWuAJYfAYuU4QkaW077EEpKrF2z+YnBL9Kytd3LwZ+1Fo6jifBaLtuumbaJL9GHOWPnZJuKzqy0aJYJQlkSx/stSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742510994; c=relaxed/simple;
	bh=sYol4GZHl4KB8rDDVdxoTzxjyClsQnoS/MbnTjGHkzs=;
	h=To:Subject:From:Message-Id:Date; b=XF66GJOAX1TWbKZY6LcVsLLE+i30dbWsxCIK6An59xV3pSMa8ViKkFa4F3EPDxwHSs+ti64Qz1Spvop0Pvke5jG+m5Z3aKlvYWFX8CZLK2MaMyzllVG3ITBKBBsQJYRcEd7K/O2qK5ffXP7FbLL8vhL6t9resmISYjWDhD6+ppk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3U7x7kS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3U7x7kS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8141C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742510993;
	bh=sYol4GZHl4KB8rDDVdxoTzxjyClsQnoS/MbnTjGHkzs=;
	h=To:Subject:From:Date:From;
	b=j3U7x7kSPiRZ9MBFJer+n1y8HwgwZDj6drSmPY75FmowmnguRKt9wYbMdmOapmVLC
	 e4av/8DaUnZgRLXJXTHt9UexCKN80WW7vXFHlcXz1ym78OnCScitTyzaWypFc5HjCu
	 2CgtfAS/FZjgLXVGBgT8OO3wADUGaKm+mTrxMz4v/LNFKu/zlaJLLlwEwA8gfFbMLI
	 OWBqSlTmO+RsFNMb1mj4KqQ4ulrj5RCvHL2rqhnCjZ/2kcA0GdI8SPvTJs5G/wz4fT
	 93BHEN23CqBt+kVqWaOlVBDDcqiXQUmnj74wwAs+r/HG/VlMGNfI90EkQg/XwYYcqd
	 cguS54d2rgvOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D968C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174251099360.25569.8886541323839829624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 419eaaae08ad97d3a9a6293300143961b7b25a3815ce9205424fecdb32700f22
Date: Thu, 20 Mar 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742510993
