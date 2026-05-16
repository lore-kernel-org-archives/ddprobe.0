Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F87D38D3E0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778975434; cv=none; b=SPlQBaDnsqMX+RRRjVVMCjnXuK7piu4t8fg4O+ciE+94yIZA2vbu4dXECqfod0ahA/0wsjOkLDjfwvxVTmZnkpqqIxv2NXZU2LsE85FCrPh6BowpbyECkT47FPPE7njBD13v42E40BLRhJPMthB0Jjue9Qo6I4aFVXkC3JwbDBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778975434; c=relaxed/simple;
	bh=7o0/B9o2nZqQ94OclPNfxlW5dQCeZGxk9L0cuzwNork=;
	h=To:Subject:From:Message-Id:Date; b=C2ulfsexHaSJkU9BqX3qF/igqU0gO3XBrsM1JoAOhCPU9aEatiMPg4F2EsWwyF5q5TDB6++jvITFFUv+yxaENkydi8h3HXyHNgF/kK36dCFY7Oxq0Biq8tOjqeZ6GLOgcFsovFzj2HRPWfZsWludZns9GnTxod5DOcfDbLz9v0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCwUWLrm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCwUWLrm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C174CC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778975433;
	bh=7o0/B9o2nZqQ94OclPNfxlW5dQCeZGxk9L0cuzwNork=;
	h=To:Subject:From:Date:From;
	b=sCwUWLrmEqWpPjnl1etSl2h4lkxQcXDLaUrWrBy6jfVez1tz/cz/AbLZi1Y+NhiQQ
	 0GOrndM7oRtpmXSzcOJd9lhvzx8uxvrKs0Eo0QrUKpTJI9jSdaAaHHyee8UVhNFNXa
	 hHt1vMjfd7BFFNfkTmY8Z94NgwRHDHFVFzY5El5+TEFoW3Ecl1P2jLeja2Ijo/1Hvs
	 pqAwuFAwXH4MZb97FQauwahwwWZWkQBcJz0FBBwyNGNfxtbJVONPtIQ1ZzG+lUv0no
	 Z1YS5UTWXSmpAi/InjqnVHwWRFPU0qwKpNkP0ff6YF7jzg2GDLM4eHEPILUnbCy9tq
	 PxHNrtyr/K6RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04EDCD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897543368.394.17437890425330324189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83cacabdd67e97dd183d56d1b19509dcc5ab8372a939f7ebf346e00aa68ce21f
Date: Sat, 16 May 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778975433
