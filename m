Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7343AA4E5
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774986294; cv=none; b=BmOu8VlK3PwkLkqGAV+kKfa+3m3jfVuQgzJc50EJ/4iH4Rp93z1IHmQDlIDamD722uBIRqYsYKOvCoR0brpa2odxIj0FBp/sxZZvteBgwEw9Ya5ueC6NqJRRtZ6eV5WsGrORJiLvjyyiG/DbGqcjGTyALCieO7Dh6lZ2ydi9/BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774986294; c=relaxed/simple;
	bh=2Olt8wc5HeeCI7Sw2BDy2iVzmDfz3X7/w4jIukPjCBc=;
	h=To:Subject:From:Message-Id:Date; b=M2LX1KfykEGEEMIX/z1jGtEb4OB+cXzeo+4WZW6OnuX9aLs7YgPo4cs6X9BEvfz3EjcrDULtRniGJ+QEzwHKrDvKFVezayZB5jhuo1FIuZeSTpqGraE3y3/SQ4WHH01U5+NYWdMnxPvKe9ofC9syb3U1CM11G/6qkT+ZdaDwA4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J72lm54p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J72lm54p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB01EC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774986293;
	bh=2Olt8wc5HeeCI7Sw2BDy2iVzmDfz3X7/w4jIukPjCBc=;
	h=To:Subject:From:Date:From;
	b=J72lm54p95CiHqfYHTQJUXyFiru4rID0KqFBkIVQofuFTmZ8b0efB+anElvH7b1j9
	 bxiZNj6jvZ6oE/RnA/rdQgTnshD7b9ciGNo22X4BiuBJ9k5tvasQ3ficTLW7mehEQZ
	 RCcoN/z40uaePuADYCtMlUSYN+eO1O0tE56Y93ctqTTRW/Jbn98jbbUn0rJVfBfKIB
	 6TVnrkNgX4YXge9xBwJByFMcNiBPib/dZLzjArJJVf/aRb7Xjuio/yS7HEJe07km11
	 yaWcu92Ac9y1gRwqZKAKLRSBsQ3bRjhirIBfh+dEmoJb/jdI0Zg0SdypjUFyio33sD
	 QkkNQ5xkb9XvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EA2FF60D5
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177498629358.17934.16389602674998871110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 012fd641c9b45b058fde31387a495148b934ee4dce75d62360b3cb50882bc6b1
Date: Tue, 31 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774986293
