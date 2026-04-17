Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBE52848A8
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776424654; cv=none; b=ss9mAHhlDcCcPjomP+1urCD1TcON/5muFOnj776sfCoNvFluLLv9LrvKhJwuH/r7HckUNx3wRV+Y15O6f7PeAwKqkTuYhVOdWtpAJM8zp89kF7umYF0F+VHmawgGyCpEU1vDylVOgLi0strMtbOMuErvDm0Sg0HR0IOIOZ5bKa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776424654; c=relaxed/simple;
	bh=/Ohvdc+PBqwVZIo7liwU8TR3fja4bm3KcvJn51npBAg=;
	h=To:Subject:From:Message-Id:Date; b=JcmUMyHUWx9n/S3ZNP0uRqLfXuj/5lFcV5TQq4WB1m/nIbXx8Fhp0Mg6OjRCO+iMvs/fKiiOAqVUFe1h9k+NHMiJufATAE0b490F9vJovUeuBt3H7whtdG+RLAFwzPUdxERRdBebAQmPSLYKFKIcXHzTS6RTP4acdT7L4OoDNy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPvH2Wnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPvH2Wnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7B45C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776424653;
	bh=/Ohvdc+PBqwVZIo7liwU8TR3fja4bm3KcvJn51npBAg=;
	h=To:Subject:From:Date:From;
	b=LPvH2Wnf2RyBZc20yazEchtOyPqp0VWKRy4YptpOSRZ1LZBItVJUnzuAP3qRbPm1Y
	 F4S4QHTFEOXMJ+EPkqfVwWwGg0psBJuNPFkA6NjnTIYNsW+jlA3tXilX/SKZ6YAKDw
	 VHJCouSlLUoRbqm6pHrgibst4ktDp18kOIkzIX6JB3o6eWGxi9KWnfhgiol71wv0El
	 foK+Zi0xll32h15a+WlmrwMMdstzgaQuYNokjWDDtgyCKp1JKz3nt1R6WLATUytk3x
	 ru27B/TWCwk1cEn9dRbPJuSQ88HFmUH8sPpq3L84TiqAHhGCVjK/OAKWy/izd/Jfj6
	 hqkbO2ZG0lDQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E45F4368A
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177642465368.26387.15835735575076468776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb2f3bca98e2665254b9d96d7512eea886cce6330a1d4b03e3f0885cbdedeb8
Date: Fri, 17 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776424653
