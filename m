Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A5730EF80
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783796314; cv=none; b=F/55yZA7GU/0LjwRhm8i4tgdwEWcrpWqXwo40+tTmDhhgqcoiiLsbOv5TMBeP0tsLgW6HYMftnvGpYGPEexi/lDv5Hg1/DgV4Kb3lQgmfyUtSodv7xsqwLD9JbeYmyAEzaMX3JoZHIvaLW72C38UpZwMSpbq5HffAYg7ZvuXLZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783796314; c=relaxed/simple;
	bh=YyjbcFceq9RVt+WidYr9/OZIoo/w6enjwSjHYeDFqJA=;
	h=To:Subject:From:Message-Id:Date; b=c2EDVe2xtxZS+e4ev68qLMgRLio6qhW6DGbzZds2bO4FWMFXx8XqfRLE/svvKPfl2fqpDR/cmmmMWNdgQ9A9PvE9dguWbDw9jnM30OwX3byQ2MC2v2cqaTUpkj69RuZKj72MjSE1avuokSz/AYA7Isu2k98o4p3CyD6urI/L3OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwiTxvAS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwiTxvAS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35E5C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783796313;
	bh=YyjbcFceq9RVt+WidYr9/OZIoo/w6enjwSjHYeDFqJA=;
	h=To:Subject:From:Date:From;
	b=KwiTxvAS2I0XFl3BXNwYw0zIOixYdUWOGO+ezvwUbg6Tqh5MKp+he4FDgIY0TuQcx
	 Q0Cv2GY07F88tZZnPWW/JXp7iTBB9FvcmMUc/IX6OpHRxoZd0jJOOm3UNjDcuQ4vcw
	 hsuc2RH4GfuwvsNEsI1tFHMvf+09uPuuf0pLn/CWZhZuJKo1G5W6CnGi7mpyLr3Cnx
	 g2977ekFMBJQN+z8d5XsI3QZIe9SKDYwSHQunLLhfvy1FekExzxbgNoTbl+LbRwX1u
	 20MrpjDe86a4mjOLOWUCXc8mIt3RWMsYX8izOg1UAbU1NvKkP2QP8Isk9DzJn4ph8X
	 baIptYMusaZ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDFAC44501
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379631368.13984.3144248292187827218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab98ade36d0616b462392a98f81334556a2be906c786ba5c76efa3b2c362c3df
Date: Sat, 11 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783796313
