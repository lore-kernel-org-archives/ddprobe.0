Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C8728A3F8
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771666493; cv=none; b=JBcxs5Lkt2B9d7GVGGO+KS2E/W1SfTmBxOSQDTY+eML2jN29Vt+aPKXSZNQGbFe7VzkwLYQlDbNi9F/nqYABD4xT4l8wK3L3oFwccema6ztOvemQECiBGCnqXwslLKWhbjlJyV6DEdrUMAahhm10mYgdnNTBkYU0ePf7FwDsX0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771666493; c=relaxed/simple;
	bh=gWzteBGnLYQ9ZbFD6q1pWL7pokfMrppMzZtRxu8HDPA=;
	h=To:Subject:From:Message-Id:Date; b=pVwNe6AMybnsjbuOB80xFAiGswPw5hOgxwZA89Ztfu1a2CkcZlpJbHOG62OXm/j5hp0HA7lszH6BfH8jyNxKnD0VxapCSZal8kcyAOX3eUZnAiOFEMuym8+fbw7p/Gk+sbsFPdeORvg2SnxN9FZbs34Ta3hlboS26UNjLbFjuFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdWRNlOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdWRNlOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5FCC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771666493;
	bh=gWzteBGnLYQ9ZbFD6q1pWL7pokfMrppMzZtRxu8HDPA=;
	h=To:Subject:From:Date:From;
	b=rdWRNlOY4Py6mxBY4AV81+jsdQNs0WGc2KbqE2243fVw27tguyvkPmb1QpfcHel4i
	 DwrdFyd2aFMySZHGYS4AxsGDezv7nxw9EKacumIVXPSCPb5R5wqhue1fiFWb6SBzry
	 t70eLvtZzIdPY6fntUh7yuiOsYyw/UdXiORXVtZ4sLD3brTfqQYr0Lic+SisV9zb2S
	 MOXU/FFs6EVPQ7PZURlPk1N1BIZgr8z94O8gUsSYNbBxLHmzQsLmkyOZx2XKbnUOOl
	 80nB2KSK2yhWBrtpfTfl3cAizyGP0MjZc9JGa3OAHCQJ/sgkhDKlnaNCJP1A0Lq6xq
	 A5bDZxzZG//5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A93C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166649358.8347.8894707685233127790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a10028523782d19939b77387f67482902e455862c0e1eed4a545e7c84099166a
Date: Sat, 21 Feb 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771666493
