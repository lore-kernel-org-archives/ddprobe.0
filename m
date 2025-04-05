Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1281B4121
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743827994; cv=none; b=UUa/MRvAsCWPpTDeK+RNAsBC7WTVbLXPcN54O8TzqTdwVv15nS4VTal3Zacyhd3uIrGrCUSKU/hgxS1IB9ciOcre1KTf22IrY+f3OgwXvz9c3G8XogVQ+n1AeLXtYxJUutIzt3KY43hcQ8WtC1hf3YawMD6TN8tQQryfXO6QJ3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743827994; c=relaxed/simple;
	bh=wk87rDPOa0OHWHrqOJ8NM5m3O85PtRnCsHjwxtoEPxk=;
	h=To:Subject:From:Message-Id:Date; b=CgxdgcyoYKhfDlIUJQftEV0luaX3fh6A+33aobDmSrAvEpNxAzc4I/7z9Sm7tPvynfBGTNG2NlpEx5mtGbXumYrVFXGljLq9XaHUgOs5Ds8TXi5iPU5N7IlvU83OCAzPVTgjq8Hv3BogFXOsOwiFmxxL6F3pNoUgnT4lHtbUGWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p8IupnuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p8IupnuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3A2AC4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743827993;
	bh=wk87rDPOa0OHWHrqOJ8NM5m3O85PtRnCsHjwxtoEPxk=;
	h=To:Subject:From:Date:From;
	b=p8IupnuEg1wTg+M2BtYo75wf+ZBb2PD3t25rXzjkf2WGbgwqFS576DW4c0V9LAQy3
	 QP8O+f7Z4ZW0WAmHRDypixPXU2gC21hqb102hEhYri41fk44km/U0BlgMFiha5k/8h
	 OS7prq0zxwDXDesoDN/ShX4qUda5wPgddxzqeXuGqQh5TGUry3fvLWslX2WD2VS3FX
	 K7zkyYXkqXYQxXX/vc5/juYspaVH1eE7JYVq8kyJQ6MIJoORW1y84djoJvN/JQxJ2l
	 8BVdI8is+m+rRypQTootvBIscgd7kIg8EwZdWY3CrvL4jckXSMrRB+OpTLG6iOJhtN
	 XPIv0rEJSPkjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4CFC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174382799363.15368.759123024768542967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72033ad284556aa2b946120188e41e123f2691b227023162f150b53dfe42a2e
Date: Sat, 05 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743827993
