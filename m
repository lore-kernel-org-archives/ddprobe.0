Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDBA81F4283
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735307753; cv=none; b=doTJcNvnMubdx7HhQoquItXiGfGsJnEUvw845wG9xK4eq3GG5XN39o2UtYTmB2GjMqN4Vh4vWeOgtJowRAXaWjGlusODtmQisvYkfa+JqVFyaSjfmZiCKbt1MAxLiEfcj72Js5U5AakhQrc97fDd+Opn/Io/3XMS5xfNHy5ATnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735307753; c=relaxed/simple;
	bh=qEjCT/ZGsDBl3DA2ibOaLIVYeYVLJObQUdvl2KCX+Hc=;
	h=To:Subject:From:Message-Id:Date; b=fSmPJ+JADt+/A44GRARj4a15X/NIiMLBvhfoJAsMZ57XKnLtmW4CxmTUXGUpd/9D8RDasvk9E7RZTTR8VCqIXNF0Wznr+6T8GBPjRTVyh0by7hGHtHFiUu4Rm2lTLETy+26Dlvjk8hMCBUXlNDUM7ZLwys1xd3C5/FcNGIKZhtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZogrcBV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZogrcBV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D42C4CED4
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735307753;
	bh=qEjCT/ZGsDBl3DA2ibOaLIVYeYVLJObQUdvl2KCX+Hc=;
	h=To:Subject:From:Date:From;
	b=ZogrcBV8TgEi/aLzhqhIuKo/OipXRC8/XkSTfVruYDRFR0DqjWd8jl61aKmbV6P83
	 Og9Aumb5Tr20JNX5JOnZnT5PrIOsKrBojpbw0Z+LNvYFPxaBGmvP0CJ45+XF7CuuSo
	 4aUEr/tmjJN8C2ZGOQXu/l3Nd7ZMhZdqrCdTIawhkzLjbdO26v6tHTc2bkEf38QDpu
	 lL0asUC72YO4abwlvVB5rycfTYdBWZ4USiq9kTmU4CM2ESemzmhGxEQwa4NWgqLeEm
	 FHYoaxTyhc2K1GCtCvJT8zPwt8pxB+bO9/4rsOYm1ZmtBgb6c7l0ta8BNsDIJpekKL
	 f5k+0p4d9OsGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930A3E7718B
	for <ddprobe@lists.linux.dev>; Fri, 27 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173530775359.7097.17104529394393959677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f961b6785e54e8edd9054cc8a3862243d62ad3551082768ebc53130825afba
Date: Fri, 27 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735307753
