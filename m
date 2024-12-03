Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFB821F8921
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733242554; cv=none; b=nESqbBq3fZs1vQBdb6ZJHaDdrCXHUA86wswpogTEV3AidiFm7oDw07k1yUy7gq1uh+hQIBe6mjccH3dz1NSopOfME7L8H5C7WtvZOIPgL5fhCe5+NX3KY28GbHyKQ36R/VS4t/Kn+aHxcwdd/xuZ+DKvL+21qN8jPr8Hl+2fTU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733242554; c=relaxed/simple;
	bh=k7L0ce5jFk5ZFAsPQRGS8F3Z+0RWYc1op/jjn6baGZI=;
	h=To:Subject:From:Message-Id:Date; b=fJXEgRF9sDT46LHwxPlEXinT91C6qPTVVjx5xHWRqN2Zy7bUo7a+JNOmIouRstaVglh6DM/naUPVBS8S+qysx90QbXoO0JvFDRxsiq2P8Q4ZZQgEmZRwDSgspj3gZARbkgRAhp/w4oi2YUI+O2D7JttfwrWp8LvN/313uIr+xg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnPgx7ch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnPgx7ch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC212C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733242553;
	bh=k7L0ce5jFk5ZFAsPQRGS8F3Z+0RWYc1op/jjn6baGZI=;
	h=To:Subject:From:Date:From;
	b=cnPgx7chkyFnt0DHRHfrFPhfMryg/T4yShdzrfVfQnFNdzlENiYhEWlf+PL0bH8gq
	 8DkK5jYLTYQw0yyoxktGXBqlyTCMQmjLIgP+XWnvpr/9JMxHVevBmpjbIiMcklkPeg
	 RmnkqJN8+2bcoBCRmS7Mk/B0HV3QlOHEVtXKGi5EZIpXbxj41D2yEHN4+F3B8Jl96h
	 LhWIF6n04QnaMwPMNpYm4i/5Hv2svD+FlCpu3k1lTlDXZCiyAbYkF5tH27Q5DI/fRk
	 TTuDt+VFz70khQw5CxRRB4z3Ig/kJExYhpMyQaaRg646rZ/7cS8g4pAMvy9iPrX4x5
	 2OvuBrjp4/MYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F13E74AC2
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173324255364.17897.16816114129236905137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2fd08d0d8c088319a1f17d17e51fdb83daf6ada4364cf63e5f44967365f4abd
Date: Tue, 03 Dec 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733242553
