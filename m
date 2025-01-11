Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C241F16B
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736607354; cv=none; b=osFW7Dywl+m+SCQZ9CogzOZD7OjA6j+YG4Cyomh5QUcEJLrnoaUZLiO4vsKUK43qK3K+4oLDhIPg+zKW0LkdIe+ln76t10sKdkKhHqgyaYfoPCVGdpoKdvVF8nzWmBQki1aqexPvVeVEqOBmrXVSVHZYXziSjUagis3sy+3OmB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736607354; c=relaxed/simple;
	bh=nNQO6O6y2U1XPDlKJRGsV9C6IuIWJNrXi2P1AbUaBdo=;
	h=To:Subject:From:Message-Id:Date; b=iOAK6sf3pHyEQ4KGvLcXoAxoRFu16tEIfvllcXrT/ipDTdxKDmLiWFcovsyhs+/DQdJjeJG1XInGg45R1xxncufPRyPpw49MmCOvVlsQya2gj43mfpYddEzHpkxhf7g00Nk5xPgis+aDtn9TwTU36s6jDp0QMHAm4Vcm31RZB3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6zf0EU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6zf0EU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B17C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736607353;
	bh=nNQO6O6y2U1XPDlKJRGsV9C6IuIWJNrXi2P1AbUaBdo=;
	h=To:Subject:From:Date:From;
	b=h6zf0EU+TYJydQy2HW8MlNDdhjRT7P+SlnXXuAiy/6Papeg43JfxRyEdyaQSmFjiX
	 5n8wmbi/ADZJ65r3NNHa2f/MDI4Z9I6ODJP1Ce0tagSs19+41ETsQeQFloL4HNoW1a
	 zYyhJ2f1cyC3I3knhFB1nNkaTGJoRKGHb/V8/+y6HxC+QLSmg+Vg3SDPMX1AF9BaUB
	 lQIa6R+h7+1WFWDKfc+jKss/PJq/opctcViv8by3ypWKxJUefZp2u0o7mTIdD9iZPH
	 aEBGEUXdGqBrd4r8OS4yWCxupfT8RT+AiWlOXhICwOH65yVB/ITW9IRDCkT8Muu6Y3
	 aVrldJTTKBWCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950B9E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173660735359.26585.17372717304325765206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76ce478e05e42e2628ca2e3dbd6e9b9b1a55fb421e32a8ad6e811eab0d6ec510
Date: Sat, 11 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736607353
