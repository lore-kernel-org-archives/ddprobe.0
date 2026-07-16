Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392D11531C8
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784173114; cv=none; b=pmYlQ1AhHJS7sY1yLmZOWirAy3G0/bG5QncISOGS/JiFYMgtpya1jSAEUwDPYpqinfIHfQaWv6km6cWVq7eoWLxiI1GkWZmdbJAZVpZzarOKzICNySv8MUq8CX5sf0IcRLgFlrFPwom+zF/XNORd9XqgzH9opOnUGrU9VXKeVKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784173114; c=relaxed/simple;
	bh=Ea26nPGo6YDCuoSNvSEaG3RDef+Ch1ACwOcsh8hRlag=;
	h=To:Subject:From:Message-Id:Date; b=PzO148r0HfMFhIBm6JKtlB3vdrmDnlGh0S+A19bRbkITkN7w/uHEruUtd4DRutS5ZBSpx7eRZIt7T9WlDI4EKyFPTwZZWEf2SLCWSt6nNP0JzSYNTHQETTh3wL87EAKP25dqI96FcxAKP+uM5oL2GyVyZeRiM3Ex/bgIYJ4hMlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNqKgnHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNqKgnHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E4BC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784173113;
	bh=Ea26nPGo6YDCuoSNvSEaG3RDef+Ch1ACwOcsh8hRlag=;
	h=To:Subject:From:Date:From;
	b=pNqKgnHwju0sdav0b2rkX/7+4qxeBM9H61n4dUhHmttSN3BRtJ/GWQq5zqzaJax4x
	 3r5HHZI/LUeXDCYM3RbepORNjh8e1XfIxg8ZJtW+OIqa0nmfMddsyUCy9j2/wCK5Q3
	 2S1HJpV4T4oJEtBB/2XQdQCEvzOe7E0refzZm33y+AmAPuquK5qngFL1aAveTUyv0u
	 BrbpsfEsR/xzIOQpswj2zpMzPjn6qh0HhG1zgt7+9pYPCgzK8J0NpeE9mKcqgObsfC
	 UhxRLjIIU/iWtXHN301xIbjVEBvpRhwXZE5RAEG9Or+uZVjbEcVOIIeyBLM9CRqrEy
	 /G3CbOJN9DZuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8686C43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417311368.11768.7302478141486801132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd4e588272dd1eb693e701ea1358cefde000940c62d9ff71f6855ba63a69daf3
Date: Thu, 16 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784173113
