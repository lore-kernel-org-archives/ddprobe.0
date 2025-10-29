Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5832D0C80
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761708594; cv=none; b=Q+hmIqXbGtGnNwlRIk2p7NOB3R6h8a702u9npbO+nXCCJjNtkbAkfxRoQB/tenymRzEm8RiF6y5oy9+LEjBp82jyoTI8qexETzS0r4D1qXlGeLb+qS952t35I0IFfCF49zj9uGDQCdCpsQ/xbPAtbmY9+0bPrCdXnRXp28LrrgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761708594; c=relaxed/simple;
	bh=TYw5v6f/dqC3pkBu2+QHPwfaMX8OAKnZXnLjtY1FUX0=;
	h=To:Subject:From:Message-Id:Date; b=WgcaHSX8hP8Xcu5wI/P8L1wHu/9EZpM/NAFlKk6ciGSGhxeM11dwQfYayEcsa+y3wHJi4EyJABy5ESUkhn1ZBf/F4SZGhoTNmN7PfAC3xlCzT1rN09PN4SMZyRunsgl14aqux/5ffwtwKKwA+sk0yu67N9b9l5iYUyyN/g1NBbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wfj8ir+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wfj8ir+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55B8C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761708593;
	bh=TYw5v6f/dqC3pkBu2+QHPwfaMX8OAKnZXnLjtY1FUX0=;
	h=To:Subject:From:Date:From;
	b=Wfj8ir+/YNjsZhxPP1TCOWrqEVuyTp6jGIm/bU1eraEtlXGzhSpIQxUtY8d0gLL/K
	 Yhxy2r87QP7bBB1a3q5m6Z/dBVONeGcPqZ8xouSiZ3ak6zwxYu2TpEa5BXm4wGmbgp
	 21+kIcPdS13XMw7kdQvvAXZJN0pzDkemzc2mZyzhHQiOI283d2FiYod3m2wLr+ZAKT
	 CrI2uoUN+wKT9zpeMpTu/TP4BUhuLZbmoBT98yiikSovRfUDu3KKHIHaKFkbxu02FX
	 dnGn6UGAFotrbPPE2pZD4UnHhctKY+MhO0tYkeU+APqphRvFCRKqjtW/jdP3KuZ/3w
	 RIoX97RFb/aIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9159CCCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170859358.477.15987685549488310406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ecb77c2553edddb752216b805791bddb497560b5ebf5f64397ca170196fce71
Date: Wed, 29 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761708593
