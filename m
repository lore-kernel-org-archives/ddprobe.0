Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AAB711181
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxmeGOTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 829E3C433C8
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703846896;
	bh=i6lzUKv3S4F7vJqazKeAoV0GvxBQgXn1QZJt4rhKeGI=;
	h=To:Subject:From:Date:From;
	b=jxmeGOTyKiq6134JJlUGL4anP2m0gnlfo8clX9wkGITDtquRELaACquapu/1YhDQq
	 1b/u8HUwlJ/t25+auUMCskBvsh8ggPIe7cLPFJOK0hDp74aUYfw8SiXk6TUIGW9wk7
	 1nZR8acstkFeKDtq96GG8BWFGn/MeszBALXyV0OwU4aIdyCi/LgzVSPlf/b6Bl8SXz
	 XrVDNtmUnwbSNGSYW1Q5LicseJAwa0OVnW2zIfNWCVV5Z8tAKi3Acea+WQvXw9NaMF
	 fD7Ua6JU6chriIZObSLrXuvEaPE+tMd38vcIkvIw1iwLncQmzK+DcjRSc5QOl8dvJP
	 T0forx/w9GueQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67D2DC46CD4
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170384689641.13780.12003725180519001715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77f00f33bbe3f107e2b73d75ccf5448eda723f2a500ec927637053ac5bd1ebbf
Date: Fri, 29 Dec 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703846896
