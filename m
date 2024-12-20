Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3214F19DF47
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734726354; cv=none; b=ccdJK+NPnpFgC6KBP6rsS50Im7kmRmWZMAWJQW/chnnoPe+gfQewJ0yK3j3hVbGQnl9zUCnmMi5R6o2yPPbodyGkFP48SeegAigCJ3cJl+6V4u4Wzvouy7TIZk+VwLvNRIfDD8PGSXEXytfx5bQck+6MKR2FYE1OMudOA51wH5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734726354; c=relaxed/simple;
	bh=uEE+xLzTn0l4DClTaHT/dHkeBXuBMKBlXJXiQ6CvPhw=;
	h=To:Subject:From:Message-Id:Date; b=cOuF/lsmLK9sW3JAWau/GgPx1Y0zOXJwZJ9nkDyMFbK9Z/FJo1mGwJzJgKVlXHAP/P8pKJiWaP7S6OfhHE+MsovoCT9dew+YZf2AVJWZVTAgcjZhiJk7rH826SHI8vR7WLfnvYA7YzdOpH8SzLdMzh+dfR1nRp3PydB4j0cilOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F/sEMWFx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/sEMWFx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6758C4CECD
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734726353;
	bh=uEE+xLzTn0l4DClTaHT/dHkeBXuBMKBlXJXiQ6CvPhw=;
	h=To:Subject:From:Date:From;
	b=F/sEMWFxV8xjPi62uGnzOpLqIAhajMOBQ3x1kRdl8RHqv3YBnC6Mt79E89RyfdkWe
	 OoYEnd8vWFPhkK0hWf8rSpNnzJGE/nqaEnxBClbJaCnsV/gEf5lVTdtiU8PWWEuPBv
	 dixojr1LlqnjYz9++HTP8nPEL/EaID/lOzDto12bnyh670H2P1u5NuKHET1HO/kv1A
	 Es4xSLZhNbbtvFcELok26cmtmtDYanX+MF/C8gnBn7QQz3AybWnPAoVQTmW6Dx06r2
	 LMhVUToeYm195D5bdPEE0hsdhDAbF1EFj6cbsAzY/MAB4V+7Ch8GCebVl6Jw3IfV4e
	 yQ3Uvs6sYEhIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938F7E77188
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173472635359.22136.3010172872274075643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23425157eede07002de134cd73d9b8f4b4a79ad50016189ef812421b4cca78ec
Date: Fri, 20 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734726353
