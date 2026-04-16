Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0B33B52E4
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776341854; cv=none; b=agE6NY5xHcANe2+W2u7+HBPAUcIhBVxRNnc+q0w/u+m6Ln1itdJd19mIdLxGa9lpusZA1lntDKeSo0eZk1lsePVwN7fIktN7lff/PvJJJ0aX6tAb0GP5OLtzNMkkL5b+FVBoSq/x3u+j3ayYhuz7tnAJeUmokvqGTceVRqAyoC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776341854; c=relaxed/simple;
	bh=Fj92FlhiziqgzfclUBCB1vqdC1CFFAgeAujR3SOySbw=;
	h=To:Subject:From:Message-Id:Date; b=hch4QBOA6DZ4BI9ypZA4N4z/ll9+6aqBBzvY/V0v9ELRNEmZfBkhgcaPTgZkbSygUwFjRSYRo2rTOxrVy381bhGHSILnwj/7wwXn7nRlfxx/Rkx8GBu81XqMAPcm8gi01O0NCaKnOn9S1wZ6C4gtaR+shi0aagrf7lFE5A4lAeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiSCUMZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiSCUMZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5DFC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776341853;
	bh=Fj92FlhiziqgzfclUBCB1vqdC1CFFAgeAujR3SOySbw=;
	h=To:Subject:From:Date:From;
	b=YiSCUMZlSyMNuD2nMNV/aC7+XSPi+H+1B1u4iFSPqWuKw4CC8g782mE5Cf0wTU3Re
	 oNSCE8bI9AaTbI1MOalWeM8NMspaIezaXt5DdG80LlD03l871/U+V8oKFdmLcoU0bo
	 4GNihiFMhLpuQlSrtVrS7NiXXDVAmhsCNRakzbsyJjIQpM3Ezm38YpEcyaQq7gRLg3
	 4yYoZZsI+HuhTXxNH/Nk2fF/A5r1HXdcCviB0Tn/Xv2lRpzT6IXPc/T9k2YptAG1k+
	 NFjZuErAQz5E/LlvD8ffbRvCJxJ1sHFzYKRX7QimHfRQVU6VUhfhPOVvJu0UZ+mAlw
	 4ME08Q6X6qALg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F4BF8A16B
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634185368.13698.13445227512459736571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdb3d50c83a6ffbcb79fa56149269420617a660971eaf820326c88137ed2fc1c
Date: Thu, 16 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776341853
