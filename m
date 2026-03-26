Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5CE413220
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774542894; cv=none; b=r1Rcjz7gTL6uMwJdWzhee1/boYV7Az7H/hxYVRfyi5gHSXRCmEVcpd/f+P8x2MNMSDYYQcqsdy24WDcqFAgADuVJwgLTWq1OdpLBV7h12B59DpzEKuLS6yZ2Gu+CTxYGRA/LNvXlRLKxihSLEgAEmwVoo53/iUMEWLdKshtXQo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774542894; c=relaxed/simple;
	bh=5+7YuH9us1dKCgmkjbYdjw4AtT1YhlnwzHT0BL4NA+U=;
	h=To:Subject:From:Message-Id:Date; b=ECqW8jd4sMiMMJgM4qDATQafsQYv2/Wvz4+mW3J0vPeeEVvUP5UHklvNimXPsONTxw/VV+XARw4ayCkpLiTd3/ES8X6RpLhpTLXqh19d/6IGEseT8fFrR1rwrcgEwiyN7FQe3zs0O6unkgxXkzxYN1tqEMJCyhItVCj3MdKlTCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUVLXrya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUVLXrya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2620C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774542893;
	bh=5+7YuH9us1dKCgmkjbYdjw4AtT1YhlnwzHT0BL4NA+U=;
	h=To:Subject:From:Date:From;
	b=ZUVLXryajgscqzk0tF8m9rz9OgRUGZGqGh2WFPqoTuu3S628eF4HsCnQFQXNeGlUw
	 guA7xO3kXtDfF+3sjs0eIMTfyWxyCz/OqhWjBmsD7MDpTBLsNlN0fZGowqkf9m5zyr
	 zBM3kn0gKR9hJyduk02ZZT4QoS9yqrPDr7TgwHqFwlw1fI3D5URuNSx8wirVFa0Cqi
	 2Krk5poHlrM88Ec+wsbG8gwm/iByO/DxBSFzM5NSHGIZ7EaGq7YJNoOj4F+ZMsceUJ
	 aq9MULwMXmygg5mjiRVKVDwxGSqs0wKf6CG09fJN15jwua/LiQA1NW7q3TULvl6FAC
	 Ki9Tx9yAX6N/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9301610A88E0
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177454289359.21207.1086784367479869208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43242966a79e0bf09ecbd08a383c9d30f1e0c3dce36a8f19464cd32b2c259ace
Date: Thu, 26 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774542893
