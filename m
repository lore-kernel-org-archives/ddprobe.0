Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1361A53363
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762916394; cv=none; b=pFO95WFyV66homFGH7l4w5pz19KyXkRZqjWYdSNrzls8EYBMEraUpg2OLSeFF2oFWVnwqGji357mC6YAySnAzT2urkKokMJSfbkYOQAYte04sBF+2AlB/xpedhMq+IleNZB6OSURpXo0Mc/tkx+xQhSzxJwQLqGhSysXJ/AnuH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762916394; c=relaxed/simple;
	bh=UfGvEVKyGOaKF30xy75SNEijc8I9okVpJlT7uidUvEI=;
	h=To:Subject:From:Message-Id:Date; b=sPy9cF1ts/XwFQjWBNiyh7GGRh8U5ufJ6cT8LsGwBosx+MnHL2pU7Sfp0e3OaxQgHANi2Fid3p0JG1xRAbpxb4UGR4+w2P24RwdTSNHuXx1g8zG4mBoO5ghG9E9pjyWjjMEBLjW9pyw4VaADx/zs2irenhOmv6WBtOW37DMWTnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYOzI4lJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYOzI4lJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB94C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762916393;
	bh=UfGvEVKyGOaKF30xy75SNEijc8I9okVpJlT7uidUvEI=;
	h=To:Subject:From:Date:From;
	b=kYOzI4lJ3K7bVxxJbRe4oOMMQPlAMWOeA5cMUCEVqhYyOlhg46IkB2dxJwtk56mrG
	 bBfNDth4aFureGv0KCpeI9tdip9zAf4hhx4zTy8ZKqq2O9NKElTuV90bI9mmJcFNP8
	 kHQz6L9gGRdgSwY05zfFvt6krkeYvi9HYj5e9uJy5Pbi8h13rTDH8ejcfr7xo8p2lR
	 7JS6q7NxVfHI/2nYjIQ3lfagGgdPW3E30glJSuCn5Bs4zvWggwvV4FbyQMaxjd23cg
	 QJ6Ojk1IC/6JFm1DKg0fo/jGQaIHMODxzAx03NjzxPvrgNZZuQkwMCZ/DUQlEUs0fx
	 F2XGpRIGd0Ieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D80CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176291639358.31153.10176303366076809083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d78fad63c5494c3ddfe255517fef49987017ae530a5de8e4452bf05510f316da
Date: Wed, 12 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762916393
