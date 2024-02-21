Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4C33C493
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708519697; cv=none; b=Mn+AfJURLgP7MEszYYz8tqRRtwaM2ApSopUuIzKoEv+2WHtCuAtFZjJ/MYYojfuwGT180KYg5hLrgJMTrRV176TrP3wubVF5DmrnFmX7TcDifV2pbNh6Z9VTRBeEe1+2gFQpM+ahUrBYZCP23Hp1LHOmx3wI9pQWvPVpkDcIfvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708519697; c=relaxed/simple;
	bh=xrewis8e6IJO3L2ue0lL8iXiXJdnoxOb/HgD2QANJdc=;
	h=To:Subject:From:Message-Id:Date; b=swXQyH7POMbMHZZolLI2gsBaYpnPsnmTfRjlBM20x7eRh+q72MibnqkryTlCGX5hwJ8b81+JnP05FttpO8De8PeIgMiKgqmtqYFIOUuC9E2Hpz+AQ65DdgPtscnpi7L+6rKH+3ngJciD1PjILOX/w7/TScqf8xY5WqlGIJ6md5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxEMi3O6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxEMi3O6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78D45C433F1
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708519696;
	bh=xrewis8e6IJO3L2ue0lL8iXiXJdnoxOb/HgD2QANJdc=;
	h=To:Subject:From:Date:From;
	b=QxEMi3O6eVDk8LcartKZSJpw43bkWlQFAsQur/6g7Ij3Xap9oYDy5UgCWEg1TuKea
	 hipa8Bnxi8tuBU42FnDzG2f31cUKG1QDTuD9JktbGBDg5O4dJkWkghRVo8rrat1qUt
	 L1zsJBf4QSMTpnsbOwnHTHln15LTUYT7/cZEYGAJg0oPKMKLjG+kwIYzu/Rdo7v4De
	 SQKEG4LZy70rt9xSQrJ/Jj3utk5H0nre42R0WKsY7HMAYuY8lVv/7FxAaVqZRk/60R
	 8ceo3ywZf2ctaFExfQeNLsYqfK4198UC579kBdU0tDUOeA/QaE3/rwgew2bsEyAL3s
	 RKA2X4mSqqYfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE38C48BF6
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170851969638.30712.5688930408714692364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f419e0529f5abae2f9e5ba1dbd5202277a17903c1325400fbdb054a9ad999e33
Date: Wed, 21 Feb 2024 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708519696
