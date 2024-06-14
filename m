Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F381801
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718333903; cv=none; b=tJEE9kDvAzaEiW/O+OkRWQe6bE92MK3LNdepx71b2IumcWPK3gE/QAyluFSqhk9iDojsWIdFU02KZ3wJH5xQNcYRMx0W4fOB7aZefV9YmIRRRYQ93K+UrTCrSlK34PgJJ55GTz0lh5u/+xlugjyWuZQmkI/p0O4VoulhsrcaR3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718333903; c=relaxed/simple;
	bh=ESL1TAB86XO0fYibrwmtFx8J66OwWXrWuih5aoXv6KY=;
	h=To:Subject:From:Message-Id:Date; b=UEp+xsSFL9kLHX1KUh4Dea0puwHt3qG1NW2cbivmddmi8jiNaGzzC9MFlEV8J23nK5zK5Khnu7H6PrDSAO4AMxGGsH8gI+V0YIQa1MBn1JYTXoM+sEaL2ItG+7sg5srl/d8kFzC1wtjO90ep+L/ioUGMBAe7H2MaBmOaaRj1TOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PPfNpODv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PPfNpODv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D395FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718333902;
	bh=ESL1TAB86XO0fYibrwmtFx8J66OwWXrWuih5aoXv6KY=;
	h=To:Subject:From:Date:From;
	b=PPfNpODvDs+A1m3SqrgjDbvJVuv4xmLfw6HLXWY1aPc9mR5Ggtp8ZVQaEIUDCn1VI
	 pS00aiWGYawObfyWRBkIrAnPG5jFtJqxowbuPz7oGygDcAl/2/y9usyt4saMwXRqpw
	 xaTXzQyvpBYIArMQhMOVgnrMLobZmN31ej2Qpa3lRGWEF0640nnqX6Ij4wyn4hUT1x
	 Ihx1PrEJfIyiHGFPg5vr0xbvdxZobh4MGrvAIC06UqBYJJgo8dskVGFjcA6meAyecf
	 6kEHV8lOOpazxj7XBihZzTpf+ovkqh+iejqedH8TmfCDG8PeRxA0pgrB3OWMezZMU4
	 YPaBRhL/0TgSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF612C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 02:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171833390277.25115.17348077171927584425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e438b282c1adcc7411618d272a3b5b2a5989b426c7484005cf387acfd9b6032
Date: Fri, 14 Jun 2024 02:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718333902
