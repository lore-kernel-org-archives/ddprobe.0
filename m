Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9FD4C69
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728433554; cv=none; b=UqgoAplNYYpHlWnbHQD66HgowKzR+yJAs4tCcQkgWnWphHdBkE+6DH7zQwVr0DTrg7p7KaqWjKym6MeWFdxOBZBn1H2rgyAy5AlhQYZd+MA5joUta3GJgvBQM0onyBRrKGoaExo1IIXVwF1PyuixBe3pSULjyHphlzRSbKaD7iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728433554; c=relaxed/simple;
	bh=bkwQ7C6+u7t+1Xfsrx+xUu+L4aAjF4CzJ7s1c1RZNfo=;
	h=To:Subject:From:Message-Id:Date; b=sP/xqG18nxahOd6cUd6byeTgB9peTWHfUopIYpLLJdfcuuaCFP+D5KtbxsfahUygPd2V26Gs1PBnvBpmFr+CQbFd/bCNysvFkp08kXkbJr+70QempB/swGuMXhO0A2C9sUJRqvE2UiWYMH7b1flQBZkp9Kkgo/g1SvRVzQ/CHuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiZ21UGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiZ21UGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A756EC4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728433553;
	bh=bkwQ7C6+u7t+1Xfsrx+xUu+L4aAjF4CzJ7s1c1RZNfo=;
	h=To:Subject:From:Date:From;
	b=TiZ21UGrEEKHxf5gabvG9YvNH28ajyP1Yp4VVIRQMF4EXIsEMWIH3wf/7IORBRe1D
	 FNeUDvSMECA6W/wSg39pbnqO0fMD3OHgbCg2P+6tBREOo3VEmOsf0Xh1kmDnrd+HEy
	 xfWmpv3sgWLnACJgcyAboJAwHi6MjSm2cY0BV66e680EufCx0utq4Opx82C6+JygXu
	 dUfzS5rQrOUuRfXva1xpLa0KqNi6qA+ltwChM/arAX2/tSl3CLhK3cIfsFGLXaZYLT
	 /12JsnkvVl16DqDbIBinw34LBAT2vC+s0p9Qj1WYn1G8AYr32KSsxufX/ixzJldXvE
	 QI3/M8P0pEIeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F16CF042B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843355357.19572.17753916861914452503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e62420abe6f81249ee60bb57afa2b46407683fa912a16e7a5740012815167608
Date: Wed, 09 Oct 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728433553
