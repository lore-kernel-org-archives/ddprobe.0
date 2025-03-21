Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F904230BEB
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742590794; cv=none; b=RM2yIY/WB6NqaEh8q2NQWVjKrwOKeJPfodpXnikiXf4YHDz6P0Uym7rZzl6uitU4ErF/kzVjfeYSMf8uOHxdHSDWhuGf8VjJ0l+ZE3TxnRi+0uakAtIcZSva8seG+lruWOHn1h35KBw5iCsIyiFijOPeOL9daLK7WwxpF33ASGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742590794; c=relaxed/simple;
	bh=+9HZY3ivl5N9hQYbkreq6E+DxkTjgqTS+3EXOIzbr94=;
	h=To:Subject:From:Message-Id:Date; b=KdXQ91oD/3EocLEN6CHNO5agA37yaMVqIB315EWkv0jrreKwwlenjwsYVtPX22TNZCK05zQtoRhMe6L24I292Vhwb7Zy/WqtlwhMaNEFCWwKDB/taQteBweFV4tEwJmOUG2J2F6FBHiS9MVTd+L91xgVF/I+LyN7lz60m8Q6WRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRwdDD/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRwdDD/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD41BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742590793;
	bh=+9HZY3ivl5N9hQYbkreq6E+DxkTjgqTS+3EXOIzbr94=;
	h=To:Subject:From:Date:From;
	b=hRwdDD/4bMh1MLaPEaqKMTIVrege9wXj2r0pL5+yM18nA4vOAXuScl8KDqb4IQWzb
	 O1KLW9HbeRaiM+TlaiX5vJ2oGilOaNIc+h3tiBSmIQjqp13nUMILoY583j54EQ/j7V
	 +olMyn0o5vXWlgMoygiZqXxmCmLzw+GvnvH3XNK3f5QTEDQGvCcJFAVO5qwdXqQIlt
	 wjL7cBjDyJQOvQzhximcs2P0kl3HGqkKYPm6R8FpPeiLQA/QkRNLcj8OeDHbPPxyIU
	 K2jQr8OYaixkfmVdVzvvb8eThIib1CVEXH5MRFz/fngIrF6/51RcTvtNVX1zqlI7W0
	 1QQwBiERsFPUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B0CC36002
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174259079358.25702.3529650052205852674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c26593192b8a5e937bbae2de5bee13c1fa4615ee7e6fc06aaf212fa5c7f290d
Date: Fri, 21 Mar 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742590793
