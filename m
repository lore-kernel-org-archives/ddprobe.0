Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AEF15C9
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 02:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713493763; cv=none; b=o9qAjWMcYqWhRo87Hyr5ovCLRgCDhbcO02l85M4bLyRlSpgO2gJpyfgT/sa5tts/DpuZ8PW9Fq+bHA6Pxi4FIUxr4oTaSKUdUOYW/78BClMO8vE8JTYWfzPXcE/NzPzKRRMmcw/E4Ub9yGzR00hLmoqrMhqVUbfuZuIdckfxIZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713493763; c=relaxed/simple;
	bh=qW4hMHTuqtk2JfnGT6z4cn7oBWQ6DnK7xWT81os5ZjM=;
	h=To:Subject:From:Message-Id:Date; b=FrDt9uxvzl88Fl5iBFlzSAH/BrNMdS0i934X5BCiBnAjYGKMwaikp2eVoGxz3C4S49hAz332OMuAFQlyinTgZ9wLDw/okN14BKw5r5guIE4crGxQMI/nuQiZYPqg19nEYBXO08AaKK3y+slMI/RxU0Sdj1jld2FxBsRix42pX10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qo2JETZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qo2JETZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E68C113CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 02:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713493762;
	bh=qW4hMHTuqtk2JfnGT6z4cn7oBWQ6DnK7xWT81os5ZjM=;
	h=To:Subject:From:Date:From;
	b=Qo2JETZW6SCsYUVuE9vJ9o9HUB66VptzH4Nm1O1sXpcYkeCVco9kFiHGRWvHK+Wog
	 /dZTVdZ90Co1albJ31oZWHCTRDbJ/6GQivgJUM4LgbymiPklKAEJXkNs8A8kxWM3VA
	 KvFWgsTxJx5jEWxz0MABCEkKpWsrtQ3C/1Rm36Hka9eg+fcjA0vC/Yz3SM3H7A0tnq
	 tkMVdPAkqvLRNurWtyNGy9Tjh9YfXSkwo9DOHO1cKfbyZO0z6jETIzxc9RTy5b+Elq
	 5M/b/fxqC+8FR+m56IwatgDWc/eUS1+p+31F7n2ufneocDm59LbO7NxWu1Pq55tzmf
	 /O16YfmxQveHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5B9C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 02:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171349376277.13304.5122920236829611196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7430de60f5cdd225fd12f25ff8383cf91944d85e17c7709edc59711095cccde7
Date: Fri, 19 Apr 2024 02:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713493762
