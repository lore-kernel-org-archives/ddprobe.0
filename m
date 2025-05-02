Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D73BE46
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746148794; cv=none; b=V4wHdEFBQ77GfYiUqIbISPllNndzsMqxsbWOgGDdJktYHCK8i6EqIW8cZ24JDO3KPBh/CC3MIt1OuPvuNCm9S7PZoNlRi+IwhKGE25ZZ/rDTonqwyEoCLvVwa0rDMXn4W8Fxj8V5W2HjPlQXHnqWhwC+1h1VH78wfrJ/QHoZQxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746148794; c=relaxed/simple;
	bh=ZY9Gk8Matxp0ZJl/7ZH6sGs/5SLDJXhLx2z/pkiEXzg=;
	h=To:Subject:From:Message-Id:Date; b=t90aZPB36kW+Bf6oaBTJa0usLhT07omqvaGc1pu/U4b0BRbm/JGA6B61TzFF7OyYn0JXtiEFME64lB2cXLocRTbKIQJbh/cfZCsPK/HSevHu74WVoUIyTMgGen7zk/8L/oewf1RFblvp4OmnQJWaz8vho3ZuJ6oWQxuY4amyUcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rR4HCCJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rR4HCCJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0610C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746148793;
	bh=ZY9Gk8Matxp0ZJl/7ZH6sGs/5SLDJXhLx2z/pkiEXzg=;
	h=To:Subject:From:Date:From;
	b=rR4HCCJ5aDpN8Pa8jjDHKSe1WjVS6AzX+NT+qLEkgCmvPQIfVXCspdbR3yllTMDIr
	 SFt+Ht0D4MCwDcezqj6bPL2qZRGWTgfYKOJE4w8x1OlIa+xR5sa6H1Y+lmt09UPZAE
	 BkZWzdoebkxnRugVtTztjTD8UrdQ3GdHQ6w48/6q3xdtaTQFeq77WOmspcvTvqoYRy
	 AE5RSrbYQF2WXiaqhhHVyGVJD4tmlXL9u2RZcB+uaEexmaSTFGSCIDGjbg9BRj8yJ+
	 j3Cl/c0hclI/k6CcyUySGYe3Ofw87IgUxMpTcjgtX6Hb4y1Vc82bSu8KFqTnaGj5kO
	 4lSDeXLri+J5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC30C369DC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614879357.18501.15777565628365984491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d06444ea166e287086e51cea6f1f6960ebd90295a701868327e1e293546c33ac
Date: Fri, 02 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746148793
