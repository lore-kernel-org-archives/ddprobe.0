Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A311B28F
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjxA87gd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A7AC433C8
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699612696;
	bh=pURT0f/zpbitaKNy1NkPfTWCXObMGneDQxO0pM5cYpU=;
	h=To:Subject:From:Date:From;
	b=hjxA87gdOscqlRzIHZ+m/r7Z5vHsOYbtRaacsl6nUW8ve02r1fQRtuaOb4v7ymoH9
	 +cd2YH5QtyOeNXSNUkwy4lamha/XTm+MNISQCubGzuOpFm4sZ5zW2Tv7K+RQ7qC5K/
	 3afi4SSAIfFMmDIlD9mExQWCw36GZ+P+hmC/YE5KVljzDPVOo3lvPghBUg1xsz4Lic
	 wc9mCfsKyH8g8p0RJSzIBF0b2222vTYOkGiXl42KYSnZIwQDaab4eNSFw1+lw8cSwC
	 qsTgyCg2TSIyos4sfuh+3Uo7hUdpEgFA4fwchyrv6hNKStHh7kD7ix6AG5xBQUGYAJ
	 E2rOrqimCdk/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D594C4167B
	for <ddprobe@lists.linux.dev>; Fri, 10 Nov 2023 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169961269637.1681.5258835987392337497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9064c12b076ce462bac9285f8e9d2ea1cb68c4fc4d6f94ee520a797e6b53d66
Date: Fri, 10 Nov 2023 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699612696
