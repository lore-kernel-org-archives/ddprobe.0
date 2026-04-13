Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B9939900C
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776122854; cv=none; b=CNljA1pVY3HPuJuu787PMcLWb5pdIxtVm4N6ghy0Qt6DA34/HPNEGLEvQPmHfyPdnzG8Lqou1dOtFO2nCQ56E5aXj/JD0tnX7km8wRuMTwx8nzv3bVumhxjdvue7zFAYgZaop8gUgTHWOWB6uEF7Vtu26h6aM8Q7NDQXgCdaP3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776122854; c=relaxed/simple;
	bh=2Dqfag+XKLf9zX+6dzhUIrT/CKvlbFrsWAs1zYY/O/Q=;
	h=To:Subject:From:Message-Id:Date; b=SNGn5iHEAj8YpeTSTw/cGfqW+gYV4oGp1LmqDEMiXszSrjiA5/lU64J2KdKk0GeOvt25jB7NbFmz+Pe751cgIP69KNsNbQA292hcX2+e275q7cuw/p6NRlMHDICsWxXIuNpiwA5lgH1puHWAU0VjaSKuSrp9c/FULz6JpOBkTLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjPaUfmN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjPaUfmN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1A7C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776122853;
	bh=2Dqfag+XKLf9zX+6dzhUIrT/CKvlbFrsWAs1zYY/O/Q=;
	h=To:Subject:From:Date:From;
	b=PjPaUfmNwglZtPfU9imb0SmD7pvo9yxCgmTFgovdvGwTwP/sPEZVt+rNlvlzXstJH
	 lER8YEB3amUatscToUc4kJV/5/hKkcaksNvTSJ+VL/RcGGe27jru4Svi6EAJK08obu
	 aY9+54KfMI/IjwOUxMHlpYs3CLVHgmV0Rh0/ViU98PD11LMWDHSUnT1UCGbKNyD+gQ
	 qAKqRKegRarZZK5iCQPsS6uMMP+ugjlQuEiCuK18okNytAieYW1aAaXibzqfuF7nEg
	 dVnZgkw2/eTa8EVP/O5LB9NFFUpnTtBlo7j2mYpuM4gbanfQayx7GFRFdfMYDcJXvz
	 xoT72D6jVNmnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA849F531DE
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612285368.26260.9045731459614894280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a176f2b74ffc4534309b4748e008c894215b85e6d3e3942d533375b7e82416db
Date: Mon, 13 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776122853
