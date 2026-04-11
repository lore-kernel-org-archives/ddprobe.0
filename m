Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7D219004A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775901454; cv=none; b=aFW6sDBXpFDGZYIEzxvTkXVlnFZfbpysXxgyrYMuzgBaBjmGYxCinhxrv3AGM7LDqETk1sJ4MoxyStpoKr4p3N7HwLdlxVIJPn+2fN9NebjAdt+UuWEpVU0lgDsAty0wTJ9M7g2atsE8L5KbK7Y3ChBMAjkPnq1the1WpdnncHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775901454; c=relaxed/simple;
	bh=bEftPh4dFN5dpd5ccQtHLHzehb9S3tJ2+w1lx1DYQEk=;
	h=To:Subject:From:Message-Id:Date; b=HiMfroAZUGrPVk8NnN+9iFnmq11D9znP5zAYzjWtR8GucaPUYNYTuqimPnKvkGZUsIy7UcEguw1x/fo0zqcmKCrUSxLVuRi/9z91UKfIp75y+5GKhEaWjOyYFBFXyQHdujkEU8KdovCpp/CpA/3BtTo/mLDAaq5WeaglYDjSgTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lr23tKWT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lr23tKWT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30C5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775901453;
	bh=bEftPh4dFN5dpd5ccQtHLHzehb9S3tJ2+w1lx1DYQEk=;
	h=To:Subject:From:Date:From;
	b=lr23tKWTBxlf2pb93Ush/VfmIa6OORyi6blUcS02djT1sn9JpRSrSDy88SXo6af40
	 78bApo1nXMFtQ2YzqCVWMJ+zEE329rYZ7WmZWswZVBhIGsyRZslW4GAh6KBbFEMB4G
	 rN/bKkXh1r0mjWM+wBLDtpB7gF5G+no9Ba5cjSukmeh0TXjKLM0gCDEY2RB95GjTFx
	 p3onjg6kvBt6EYpoxCJr8JiMAaCe5qXfyAc3JRGQ9auDpjNnHJRaFxnKGkZ6RyPPFd
	 qPeAvgm3iWWGxHw+hYL18HPuq1KBoJt7JXFW3hPKsdOpbyPj4YpMXR5cA7uMLNM6NF
	 Bbr8HP4yX7JkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0941F45A1B
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177590145371.16469.18419697566154188316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9fccfb8219517dc6d933615c630ac9686658168810be4ee80db00333e8944a6
Date: Sat, 11 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775901453
