Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2506E285CB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773287094; cv=none; b=adUejUEKhkyM1WSlFlBtS4rhk/bpz+YyXD6b4/kSLe1iwjCxmyUBLa9Q8IdyMITdVUNzZPpDtLPxPBAmDkFNIBcv5IQaEuBHJB6Z/zLsSFcCPiWCrVJy5SAFA7kKeos86cZn1l8+mv6126oow9rx68Yr7vfSEKKVhzRt+dyyST4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773287094; c=relaxed/simple;
	bh=/4mORGj0Q2q/8CxMDzZYJgibqyma2kX9Dwh6RNV/ohw=;
	h=To:Subject:From:Message-Id:Date; b=E6PjrW06hnBIYvGXuLy53ntGldbtPYYuS1DTSjuZSmoWUViWDrSYjnClu+V2dTSFJeDMMhgtyrREjD0LV/6nAk2qeUoBf9r9+IliyaQfX4/h8MqavKbCYYMfHW4Fyt1IsbUYzSnIbMvDnM6pAQjvh3eYDsJ6mbPxGsfj+6YYqoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEDhSgxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEDhSgxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6814C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773287093;
	bh=/4mORGj0Q2q/8CxMDzZYJgibqyma2kX9Dwh6RNV/ohw=;
	h=To:Subject:From:Date:From;
	b=VEDhSgxID8Ngs1SGhpwNlVdAoPdTJya1xvGFbolF9DaJJBi6cXfLiyCcB1sNDiVXY
	 WgQFYAU1LsB+kzXu3KkFbv55B2frIlQ1BRLtvYNZIYKY7lXyMfoU9cvZ00TwUnBLxx
	 +3AdJIgTfd/T368HU2eo8/DuXhv8/zMNuWQzE9yOInsbpIbJ/aNaKiE3Wa5dbEQ7aV
	 PgHiPlckMfX6aKCitTWMmZAU/xbrSdBrzRtTtY0Xzfikc/2hOgv+D1EHc5hyxvdAUl
	 9anbVimcsipcWMLIEg0BcYwlOMVOANT0j6526JrSURqCYNugN0K4A3tFhwib+ShWC0
	 gI1GvHsitz+rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93756FED2C4
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177328709359.1856.14156273075209236304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f33c108ec0439d7c516e9c5709a93f6f3892f1d282befe1692bfdff9cf8e75
Date: Thu, 12 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773287093
