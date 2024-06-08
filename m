Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81DEA610C
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717823843; cv=none; b=FpiXFzf1+Y6+qP4zQKCPPu/ZGUxInYLyDxF0SmofjUTLcjysTB96rAHXBt02sJZSs8YY0pwYVMBDvGtSGQo3cZ7lcRPgzY8Zc9DxrRWFHXOWC9yXnZXGNw7ythXkealkh1fkDgZfvlX2cXbGNINl3v6Kur4V+Y6L1r2KTKqXUck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717823843; c=relaxed/simple;
	bh=aj4PdtwJhoNxPzV5r1uMIwgOHD4KjkHX6m99Uf+3F4g=;
	h=To:Subject:From:Message-Id:Date; b=evOu1KoRIWU02Gi7nMc0pwtIyzqG0ZI7CWvaMwxseoiFHTF0jbPAECb0pt3M6fKlv2LN3EPjSymRs8/i7njnxMjzx+e0uF3p9741H6kz9u6JBmwHVJWK1jyl5g6U4SnAaHO5NSCwAQqLisXxqaTten4TtyOWdIsqA635G+Q04IU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYXMx2RV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYXMx2RV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04DE7C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717823843;
	bh=aj4PdtwJhoNxPzV5r1uMIwgOHD4KjkHX6m99Uf+3F4g=;
	h=To:Subject:From:Date:From;
	b=WYXMx2RVA9tXiDiWmZbzqD42UyWPn4SDdfDdJKyGoIPg5HXPqJXHZJ4xJmYU0fJI5
	 C05s40w6pNhNG567YH2l+0yMZFewHb4xEytormeluaoj1a9UHA/Z+gZ4Bld5zD7Ql+
	 lDwNZrW19yXpL6qtFXUYVRgZnlkF4NvNJnT/7NjSYsaf3cYSVifB2T/cwuL5j2Hn7f
	 zCFEDuiiuZMTmx6wAIg1qahFdAs3yAIsV+QB7n+Z3ZPcn3pAvJ4SuJhihCYlfQ52GJ
	 tPeaoVRMD6pDCTYEbeiH9wd69BYy/bLIyy90EvUIUzyeA870MlwGefqFQ79BXgxx85
	 3iTwA1sXJBeaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF3F0C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782384285.8552.6240606082416958110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5546a0855ad078d310fbbc164129d895aed5f072eff1e10ebc0ae12d22d2486
Date: Sat, 08 Jun 2024 05:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717823842
