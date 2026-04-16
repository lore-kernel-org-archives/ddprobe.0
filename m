Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126A33264F9
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776376655; cv=none; b=MRwNzJUyY9NwuAzYEJEKyEgAqXdwLCLZ6XdvxYSxM5TiOs0cR2gq2rrsWVojuC2EKxbS+aGLB3ZnBX1e6B/wj7JbXnDXudMb2Mf0WyM6E60jsXuFnbguy8Wpp4OnCOzrmaFxyeRApCF86sKtcncwdE/zFxEiDkmFFPUGQ06fI24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776376655; c=relaxed/simple;
	bh=munzRbep9JDQT5uEavsZ1CO6ko8s+8mNSLvqETuc4mw=;
	h=To:Subject:From:Message-Id:Date; b=cl+v2ik79kS67nc/+6l8TIAaFkML6DRNUBYElrvKGfTv9VCsSRn4CCiI51uvsqfp7rlmOImdBNX47BEsRQagbxuEvK02Uyv0Nl+E4kwRm+GhQewZeIxHdJ21LQTrdwMHOzkWBkI+0j2qP5XIiIt+fsA9zd40I4cHmuPyPczsWOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFpbMS+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFpbMS+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC1DC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776376654;
	bh=munzRbep9JDQT5uEavsZ1CO6ko8s+8mNSLvqETuc4mw=;
	h=To:Subject:From:Date:From;
	b=KFpbMS+sxHwu2MiIMCzzgt1OcylMI6pM+TWyjMrvb7QfvWJ0KGc2HHRRQqKTs1Suw
	 95fOOtD38BOz5/S2ViP0xSJU80UTw4OG0EcP3cwV6dodZlTHU2OcKUm+k7xDGjBhkB
	 RZlrfyBfpcHTFonPMee8tMJlCDnGgv5/Pp/3IqogfuLvMcyuDue74OvCltsFhUwTOP
	 5e2QGWwB5roxOnSzkmao7eHcdoz55mNLS1pVFfZ9xEhruiYvCyk5eDHWLHPIj19o+O
	 ougYqV1W7iVGDCOpdSp6WIbdish/m8g48T4VdFBo4W0tZ/GGCuLTnVh9UJRRKmP8SL
	 jqfCLMdeACzrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF19EF8DFC9
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637665368.1697.17807859599214834012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4758b9f03466f7bd9e6502e828ffe1e7d805f47ee1f435c9417a13eb75ade795
Date: Thu, 16 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776376653
