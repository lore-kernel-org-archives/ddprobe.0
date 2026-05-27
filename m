Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FAE45039
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779856954; cv=none; b=PzT8isCoNMFo8LherPGb/Ddv2Qk1ZIs7bo13w/ePfS+Urujz3XgDxn+Tyo3xo9TB9kktq2DAgP97VNKF3txyb9e1plhTzjZRi6oW+5RkVeVT0LUj0UAwT1yVZgf/Zxc1hEM2GAGkh1z8H60snUZy07jXV9TjAzgFrwZEKNPTz5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779856954; c=relaxed/simple;
	bh=tQpbVWZZ3ulXAp0PuhkjcvDFkK1G37Qsto4mKwXFF2I=;
	h=To:Subject:From:Message-Id:Date; b=fYzfThDb5ulxjAf89LhFcNm/59+koadXJQuJxlRnSXFxf5mUipBm9KDbRjCAAGglpXmD6lp3CQu3/WBGg+dBERW2OphCxSGIe9zSFE7Qiajk1nGv3dhz5Yledlnwzy6P4QSagdar7rsD7nU6QolkqHZ/DWp6VAHxJSiUBtPiT/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VODqy/zP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VODqy/zP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E7AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779856953;
	bh=tQpbVWZZ3ulXAp0PuhkjcvDFkK1G37Qsto4mKwXFF2I=;
	h=To:Subject:From:Date:From;
	b=VODqy/zP5LbzV/Ujt+x7T9FKu7HZb0eEOOTIAeRS43rh6ltO20GyTJBZKkSXqIox3
	 bUAGivc+B5DF2HXihe+uSfvetQOxKqbX/Y7RdgS3r/8MGQW/rDS+Cg66qX067vhWA0
	 SoZFu/708ka/hpmXJ6Ak5Z4utnLYMr9E8P38J4cJXvYM2jiSE6hpo3jWdiP7I9ZWjt
	 gWrpRXpdb8Ch0nv4wBjXHKmIx7yWla8akjNRITgtZvh1EINcyjzH/2OVfKUvvlpuw+
	 3wfh8aZK7sBIpBdHj5P3O4qMdA/47OOtysUD0wtCvWfUGwKHud271ZlH/j22qC3Gch
	 HrB1McNH2W4rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE4ECD5BDE
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 04:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177985695369.13855.12170227631415885481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665f0791cc48e03ac4dad0071692700e8665a09fa055793333f2541a6d9ddfa1
Date: Wed, 27 May 2026 04:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779856953
