Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D0F39448A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772551494; cv=none; b=ffpUvwqHGEPXHDJdxhJCMOc7rb/Ac82NVwXuH1FwonPlDWRI5fTD+pnOXyEUxUQ01J6wY858wA72w1rXMaYU3V7iV+BUPn9AR89gPccQfl4RuVBOgsBL/WMhSjoj+RilbwnwN/NSR/Wd5lV01JVaw/YGYNEzIfseYr3sJM0UFDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772551494; c=relaxed/simple;
	bh=RE5T4PTpYs0LYoEm7qLdCmy/z6PLBiLIssLvwvnap3o=;
	h=To:Subject:From:Message-Id:Date; b=HQoYj+p0otGsdFJ/hWJkBYExxsl3qXrqLNTvkkBLUBqOUlGkl2Nj2GD3SDwXug2dMnVOPr9U8eggyN95u6zec0gzJIf2yJ3H4Zlx9CXf/ip/UAHwal3V8EH6+yT81E2Jxhrk3endZ3rHvpjwTuC3og/Pqr45sbn49282R/HFAAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JR97J1xy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JR97J1xy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89FAC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772551493;
	bh=RE5T4PTpYs0LYoEm7qLdCmy/z6PLBiLIssLvwvnap3o=;
	h=To:Subject:From:Date:From;
	b=JR97J1xyilu61OrOuG/FeRLzBqFRuLAG3/HVKxsqjoM7s3K+KrwWTDwfXxpfRnfFu
	 BEfU8mJgp5mIv08eECMtUo9fGY/XNPiDYHHtpbn+eMSrRXjXuDC+otJl7ALSYNCXXe
	 ZHsXpBJXB2dLNmubMwH1zjJwPKhdXJME+KNibhH+8FsdhDYP0hEPkR8zghHKaTYsxd
	 8P89QlAPytCZv2c71JWnAM87btsXQhSUpTAYLJd+YdkP7wn8COg2iUv+hRM2n46+pw
	 ethTwsSKI4AK+rm5pWadjq2686fT3i7QnNvLwUTTo5DzA+mBdcchfWcin4xA6gpd6+
	 B4OGSra2uo6jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F43CEDA68A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255149363.30680.7958119403899569550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296eb89b22242623a6b1bc1026001d204f72109e2a4056a0c7d0b37b02145c23
Date: Tue, 03 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772551493
