Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63858E54A
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 07:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgLpzFHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1C1C433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 07:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696664228;
	bh=6TXpCLG6o57SD2IeTVXShuWbrWd5d/0MDPhaU80xrho=;
	h=To:Subject:From:Date:From;
	b=hgLpzFHqxltfi8cnh7TYMTOmKDP3lPBxUp6i/LEpDSIKlz4sATqZczcCjwLjQU9f3
	 EddlEFenJBDS5E7jfyqmDscA0p1Et4Pk6ID4zB7sYpgpeFD8/1EqMm7TNrGFYLQvpz
	 IC9TTAzTYR2GYBmbsf2x1FE0nYmiRY2CafHfEJC/gqxVZ3E1YL6iyQOkXGImG3TVnt
	 T63NL0PEDzICZs9xAXjJ9W9nAL0imW79xUl7hAIFswVdiyWbjZHuL4ZArSQ5VF0Bd2
	 lvYIpV0HYj/5U4D84wi92eep6udoBQo1rZSPxJpvqheSPGqYUNlmSHWYwtHTOlvSTz
	 mIIKH6QFq1PKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A73CCE92FFD
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 07:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169666422867.21725.14433381193074368247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a49cfe36300f8c3248875043ff534be5ba7aaf159466e7afffd47fd5a8c3c1f
Date: Sat, 07 Oct 2023 07:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696664228
