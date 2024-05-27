Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569AC79CC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716773663; cv=none; b=J2i5dU6GlJPOA9Jqy+69jH5Um6JS9/9H9K7eCtCx6AFMNJdiy07Roe9iB0UMOQLlYXosgMvkdx3xdgQi9GvPXIjFWxUn0OZQxtcraHlX0zNlqDHemWCBuNzxKJ5Oqmh1vz/cXP1gCvlQh8YvqPx9Ql4hjGx0WPbu/x7x+eJGr2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716773663; c=relaxed/simple;
	bh=2133cgl0q8qjsN1sPghKdP+Yyj1zCR7dZdRqWbrsC4c=;
	h=To:Subject:From:Message-Id:Date; b=Nkj3oi3USNnMas/lKgdxpahMiQnOE5ddrTOYZ/bGiux51hBw4elQhJ2gKo2Pumzd6JrbsSQQ2kO6dDx7fczAIJf+xPbboEIkbjwnhkscQGAR2BsJlv4Hz+9h3whseuBSMHHQuBUOm++F6TrJNw7Fi/KNulTctBatVrkbgsUwLfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gX8LpmAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gX8LpmAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8032C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716773662;
	bh=2133cgl0q8qjsN1sPghKdP+Yyj1zCR7dZdRqWbrsC4c=;
	h=To:Subject:From:Date:From;
	b=gX8LpmARAm1rt/Fsr/RM3kTNWrvZEuNkz+HmuK9tNv1C3BMEhQOme9weTHST39Kgx
	 CZAkb6LlRC3WG+doLbgEOM45m6grf3Ff4vpSFGVnQIb2SQjIIWGfJ+NbIpGRNpfHb7
	 Uop80y0dJ7dP8He83a5YCLZ7pruEtUrq7X9EKoorOjuJgMtEYLsW4zu1/VebyCCTcY
	 DYFMFF4hSzfyJr5zHUTcXE62jJsSOGb0qY6B6IxGPmuHJKRu1yaPC5uN7MnRnE2/89
	 YwvQzxpTWLS+Da5zTRthYvKZhanfE9rFNNG+T+0Zz5lv+W4gxlMTfaJRZmoSzcCIow
	 QHQvW/CxAwK/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BC6C25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171677366278.23196.7696858924617207538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47d65f0aa4d3fe38d967224b5a2b79672c9cd59b6e4f1c4922fab36e467c8521
Date: Mon, 27 May 2024 01:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716773662
