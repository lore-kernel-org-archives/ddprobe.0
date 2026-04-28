Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3247C47D926
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777403854; cv=none; b=n0i5IvLCA+aLes+5O0FAIoDIYndbAXgYc6h9oCIZ+ngq+4+7H+eVLK+87eDUHlyp6A0SZA0Aw4DGv5Gjg61+E1/HNG7BuZVIDGXkk/jhmeumAAT734AxSkHpOjPsF0D16hKBhmbY9lG6bXZW1xtW0UK8wfpbJ52Txo9hjPL5K+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777403854; c=relaxed/simple;
	bh=+tXyMP1/8sFitMmE3AbK9Yj+NUX6mCFuT3ebhPBkwHI=;
	h=To:Subject:From:Message-Id:Date; b=hmZTWkOgJxwKSgHONn+UdUvBviVlZglGTYoF0k003Ha5VADkajKga3J/kpvaoYVwxeub08LxntINJ/CpUc4cvnn6EHPPNStfso8upRRRaegRVmWQml/9AmwCRHtoOXHfCbyDCrnS0s2eeixzSRbtzJS1u7NEQUP9EVEQ25XeyAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QRYb5Lv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QRYb5Lv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41D9C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777403853;
	bh=+tXyMP1/8sFitMmE3AbK9Yj+NUX6mCFuT3ebhPBkwHI=;
	h=To:Subject:From:Date:From;
	b=QRYb5Lv7OyGxx6Eqf6zEoBF7HXNqdaCmBGNpzSiWx/na1TCz2bKQkWrz2wGc/bvrw
	 qcXFeOdTcEMiCV0oxpSf/vwWBHrJOeLL6c3I7mMcdOo4GpmXUiAcffk5D7ZLT8d4p+
	 qhKdF2EBV9BEFudlt5jZ7I9I/KOXmTYWmXotRHHTZqwt0vlZj+x2JRnDHSZK3xa9Qt
	 E5enmVaOsF4lTuLhFcwtHI35KIEoWZ6ufctUxW61v4omPW6KHV0uLJBXMHkPcII8YU
	 ZObTlmJSegQIuVXqHOWckdzYNrBDC1RkSG+8/5KdmxeOKPgniWqLR0IQgzdvuEv1Fn
	 su2oLy+iXBjjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD03FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177740385368.27432.16982969390363017361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3349a4c553545bcb22127634a8c3d64b492866a32bfe8fbe549192996e0d82
Date: Tue, 28 Apr 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777403853
