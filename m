Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0C640960B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779303034; cv=none; b=INIvRtUEANHD/OLwz4Pz6WTwMQWmEavfZoDRF+yVdYPVuX3XmQvPNscTAKnmw71l5DOSXcZx3NW6gFFUTSTAOyQA4LuMMsuQB5/31odbyBKK/8D0jeaA0czX3r2m9AHWEm1QXUNrNe1WZ3jo2+1vPwRZlOALUscMZ6hhgBn1d/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779303034; c=relaxed/simple;
	bh=O+XqBZ21QvyD2Zr54yGERUWKn0WlEmZ34TZ9LbiOiZE=;
	h=To:Subject:From:Message-Id:Date; b=f3J2N2i+wLfVJOo/BHCzJVCGKEbBjp6lwS5BnZiiAzeg6VtFEodcDFU7PVR8sU/ODZJcRR6bYUM/cRvp2teKJvVfmD6EZJZVziC0vpvjnm+2xT/lOFAc7hT8IPLkpmdKUJv7oCK7f+jLhqhb6gpOXqEylZrD8yeJ0bRg2Yzu7Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+t63/dK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+t63/dK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE19EC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779303033;
	bh=O+XqBZ21QvyD2Zr54yGERUWKn0WlEmZ34TZ9LbiOiZE=;
	h=To:Subject:From:Date:From;
	b=q+t63/dKa7ATsRrHbgkQK9nqTTulTCoaVpPN/GYRjXjZ9EbezMhBU5iUzDYIgQErw
	 uHta0Ca4nG5RHVzIzc+wnOzQuKbDriLcjYIws9R6VwNO30YyHegq3EnNojflwpaXCm
	 2Y2qv/r/GeiuoIaD02iUfBQ+GOmknErpOrkipIBSvPDHnrX+x0UY+q6sXmGuX/ChuA
	 jk7n26Gnk7cT5TFhGBW88z+PlqoTLETyGKhlQ3uV5uxrtLrLlBgGu9h+Qs9GoD+OmG
	 17KTrJhS4Yb5uhWbdsqjXwMA/4oH58F4gulEpUQF1TtT7w4790ZQt12Cu/jJDnyL7a
	 k42YRO/Qsc5zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4B0CD4F3D
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177930303370.26189.12229724162906838779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0267805d27c3444bb609539faee776aae83fd9c37457ee6c7566672f20e4b0f4
Date: Wed, 20 May 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779303033
