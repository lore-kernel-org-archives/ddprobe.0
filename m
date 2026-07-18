Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C4DE184540
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784367514; cv=none; b=EIGA6cNKR/NjgasltKvKjz/pmxLuw7Ve6Cnz79Mc0l7YCFZeP0C6ZvwhEUNveTu8lFW2x/wXCjDquQAcXwaIuOG5PnAhyB8wgpBFRAlaDjTOQIiuIxQKAxjskAMr8LO+7G7YanCmJWd7W9DW7y2xmnhy62Upma/XCEiVIKwsfRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784367514; c=relaxed/simple;
	bh=NvCpbMUKhCiSTkCxj9HnLEIef2LfRZZxJr37SSA8g5s=;
	h=To:Subject:From:Message-Id:Date; b=QFWs2yFaTwBjz7568jERm/wnD5yTSolsLZMm9QwgTFv95Re3xQhnTzHGM+2OBVJArK4TWJq7ZL0bcKMiUiQA11Loeh11EhJA8eSQWRyxq3kHPfVPR/dvOTOwesJxhMYjSOWRd4rw4JzZtWLBd9Vvlya06Ch3YfPV4NBRUNlhpFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxTYELjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxTYELjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6969C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784367513;
	bh=NvCpbMUKhCiSTkCxj9HnLEIef2LfRZZxJr37SSA8g5s=;
	h=To:Subject:From:Date:From;
	b=NxTYELjzr4YK4qzO3lzM8Q+aSUIng3iGMXicMtd3XbmukwHUQAMPZPrwvJ5MLh/ks
	 uoG2n2eBJ0wVDFJjyLCHhSqI56fSXDwuGMLqomXbTjMaRQu5ew5juJqErly1ZNUu8F
	 dSQ4JPJ8ilVLisy0NkThHDBGNByygUdcu/ZgS7PgE2d2yJcguXK5ScpONsrzfBzcYX
	 aYMwqc05aojX4dNue89ilOxi2TMAybHbsW8gEoDY+UnvAtP/nSnLiz4NoUbOUTNMoe
	 CfkWa30OVoDU5CILQmpfJhblgDlOPL86nwruO3nkJO3T+O1q6ibFH3iQPrO39MBG4a
	 hTrTrw0Yx9aqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3282C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178436751372.23649.13028519661339976343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 510d60dee5ccbe76f37acfff063b5323a5939e3875cae8695168852dc7216175
Date: Sat, 18 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784367513
