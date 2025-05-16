Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7E323644F
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747439995; cv=none; b=lP1OF0s/FXLRkMOObbyDtKqD6EEiA/s99pH7Rxge2EQ1/T0tU1mLvtyKk1h4Np8cja7izWujBTdNoIsMpPi7Tk81Vhj6XByz6vycGndOM6LnDT+QcCse8IgfRrhLEu7AhbVh6SEQMmyLgPTaynW2jmyaqc0OLGiD0RSzPcjDLXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747439995; c=relaxed/simple;
	bh=1zEyz2Qm0tps3t381K5iN7ZzYBpcqO1R/JTpYA3UFpQ=;
	h=To:Subject:From:Message-Id:Date; b=o6eoLSd0Ldd3YzOsYL1FndnO5XMPsqUtJwFvwe0qVhxY7dmd90ruc1iDRf6yBEdLv87SW7JF6joXDAMZqHclm7mEeEx2mDVCdSJSt3aX+gHkzGnvxQWlZoN21J6j2/v+7QFa8bsJRTINQ3Jh5YodMmdRnJRR1oBM3o660JMPV64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7/pYqtc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7/pYqtc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0530C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747439993;
	bh=1zEyz2Qm0tps3t381K5iN7ZzYBpcqO1R/JTpYA3UFpQ=;
	h=To:Subject:From:Date:From;
	b=N7/pYqtcO4+xt5pLxVA7ctGjQIUKQmndLBvV3lHXbQoU/ujDg7ppFUGIR8nN9Krj+
	 jjo+PdZ23U79NMLWxCcpfUSS0eTUkbSjUYaIyh6OPkc7SFYD8hnAX5LoOAPDXCQb+A
	 abdoyfVVlY2T/HmCag7RYYrG7K6qG4WcdHEzArD6LXqTYkvbEMeiPLrwIQ2n1M0S9n
	 3HCSIhxJD9Xkxkl529jFBxhjmGUvdg6U4yx4OTeJu33EOeG4ZR83OCb4mONjneZXEi
	 ydCNVzydySvIkZbYdfKGx9GyIjJbRjhy1JN50bOmf0k3h986KdTnEoYEmDTOwJ3+9J
	 ms/idGICmfI8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E537C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743999357.7363.2977158368660574907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd040f1cd9efdfc5a048628c43abf893d2f2727d856ca2b77df963a32e7735c
Date: Fri, 16 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747439993
