Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1020D522A
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6Lwq7Yp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7941AC433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702003096;
	bh=VIEb1lwTBifgvQWr/H+t5pPp9XYIW/hHpjWq+M1Cp48=;
	h=To:Subject:From:Date:From;
	b=u6Lwq7YpUWiSFP9oZN1Fn6RDpiYTLqYYUwlKP/nD1bsqmngGCWRmQRCgfARmrd2Ti
	 nv2atCgRPB3qHDde/MXDCnZPHX9QdwFfmwwvzuL8DFis0uh5f0zyv0LFH+fgcmy89q
	 XaWY1D2wKLr8hrUzhdi8bPLchKRh3M+F99imbXrgPOsM75pXPmJxe0AVN4CLwSvYj4
	 2gIQ2aY6iCvlxQdCxZH94Mw7n54IlO5Z1L30HdJ8pMiT6dx4m+MdRmpyq4Cl5tyzA9
	 eG1mY9hjD/AqAq5UpgsFSq9mFNmPVcA820ihCaRVdOo10kSJPzYaQDkAFVdqbFawy5
	 azqrudk2qfmkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C1E6C4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170200309637.23419.14136827601909062629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce65ad4143aa4ab77297ac672de7d5d9b99573aae340f7ecfcea3c9744e60b3
Date: Fri, 08 Dec 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702003096
