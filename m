Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA6521D00A
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775916454; cv=none; b=UlGloJaMpxnrKq50Vnn1hibR79wWHCGXL8cPLFOoKiHxNydIuRedd/G/JQik6eU52tQiq5+R3QyVgotuwIij/FAciYWrZFziZU7VJEBnMkVfiL7O85mnuSfsB+9f6Rajyibt1XmFRKE7NmSIlDcq2xdgV8Gl29pu50C51lMhMQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775916454; c=relaxed/simple;
	bh=sd7Gy+EWJqcqZ01ULOi2MTCdor4l+L4gjpyxW1SAWCk=;
	h=To:Subject:From:Message-Id:Date; b=Mvm9JGy7FKr+OuP13EQGp8m6YEv4No8QNmOUNevOnDZ8Uqw6FIXVlG4GN6Wpre4hhe1LbktqWjQ01Li27cjSstKBgwjAlAWmd2ZRvgt8sIqxhQyRAJe2zVKHVAzjSsz59/QvM/pLZ8OMbVcPrFP0OVN7p6UH8FzSAG9If4lJX5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uhs1Nw8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uhs1Nw8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C446AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775916453;
	bh=sd7Gy+EWJqcqZ01ULOi2MTCdor4l+L4gjpyxW1SAWCk=;
	h=To:Subject:From:Date:From;
	b=Uhs1Nw8uWz6MVD8pvmIKKATpJKk08Spp+EOmZC0SLpkDXTu9pYAlIivDuKRqxfIqi
	 ZtkEAxim1FG8BbmiGrg6UrypQ/sB/L2h6ofh1DVZSstvjpqWKSFLgAmLpWyW/zzUGq
	 UTBxLBDkGKuHRv8Va0mDOeKAPdePIPQ0LyOyjmY7Oon9eUhricTytayXnaaVrRMDLa
	 nD1mAZA7D/sAivO56XUrX7GzTVfPJW0Ppi3IS6qYI6j9tnjcgx7lBrtPnea121P2k6
	 06O3Zv351QoUee7ceQoCiUqo/QEJZBYf7V6yMohbP5cGu44I3JQcZfxmKX8e81rOYB
	 cXqTwsR8oqf2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0C1F3ED4F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591645368.22545.12004403747459698844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d1f56ccd9264aa85d7ffb96856e4e178b76f977d8e8735f113f22162e60c7a4
Date: Sat, 11 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775916453
