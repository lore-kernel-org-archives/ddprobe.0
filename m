Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3744617AE11
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775435134; cv=none; b=j82GyQv1dbKjfzwgtR9FLvzA9p/Se81UhSyN1xEY5Evh0RgAov5s/Wf4WB16so8HJrS6NZ5yNONBKDwU/AU9icAUWXHuZPfZDVAO517jBUUbFxegk+v2mzkPex12vDbZCcsCsu7JBzbLAQQyyuI16VJQDRs6pMlKrxRkau9ZCxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775435134; c=relaxed/simple;
	bh=ButpKhV88tzMMpfdfzcDBs5XYcXr5Y8+JvHwehkx3/g=;
	h=To:Subject:From:Message-Id:Date; b=pTfrJLXXe++VW0p/0RSW1f0ZR45WM4uypVJI3gdZEMGk/Ux6GSQhLfWYbwJO7YFSjE3xXCL48pj3GS2tMUiTRL6qugKrroCtFicF0f5+jx6/49Wqb/5aAyp4zjb13j57Bv7MiXdQbbfCOAhBuA7hSjOZBaTR6WhT35hReUNfX3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEK20mla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEK20mla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F14C116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775435133;
	bh=ButpKhV88tzMMpfdfzcDBs5XYcXr5Y8+JvHwehkx3/g=;
	h=To:Subject:From:Date:From;
	b=IEK20mla4e6Tdg4miL8zJu8AnCBEL0CsxSi4tfSvjd50OsyXxiw1/bX79ijEoKd3c
	 1mtIhN7JAMpMHu0wajPS9p1/N4rnGRFAxbTVvM6KOXI/D9f61f+eY4R2A9/CP3vTWN
	 H6elPIaWIZMeL/Wt1+xbKvyCXCxNgSxOdbZWeNOtdHBljTWrWgz2OZ0jwEBKgYyVwy
	 +PwMMWk/9t8rtHyB7Vu2XfK69GwA0uE4tuK1FQPPUISJ0m/DTfc+jU6Cmo//Cr9fbo
	 cYC1sB5oYxqj+KPfrKsMkYqB72R4xfz94OOgTEBGvN/7Kk/gR8J0K9rtwWkOP+8alU
	 9JgJ7YDKsiFAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FBFE9D827
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 00:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543513370.12543.9734898831926053875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7bbb19f007590a034498e8fad9369a169ef8327477f7e39a092ab4716049751
Date: Mon, 06 Apr 2026 00:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775435133
