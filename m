Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAB8168AB
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5R9Urax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D100C433C7
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705188496;
	bh=y7HVVN9r8D8q1s2NlkuV1C8bnoPOYfKH1YfkEW+c9GE=;
	h=To:Subject:From:Date:From;
	b=s5R9UraxJ4c0Z3NWy+ux1QB15X6UY1dcOlXCYF5MIm2rTP14d+/99hsyCGkrtLn/H
	 xsrwVeOVC32QCX7nCKo37fTJ666olOTxu3xG3X2qK5UKeZdU0JmXkHzytXw6AESRd2
	 AGiSFhzvvSEbs/dFx/okd1ddXLCdPKwH87gV4+IfS+CiZ0DeKfRqtRYqkUSNRFX5yI
	 R+ExiLPfeNaTFW3xlCQHI3Hz60+rO7uj53XbpRXX5AxfdEgr/Kwi4ku1fx5u6ShoNy
	 egYualql/Px94lRXyHpoQ9xiM9KYKqPhBc6/o6/NtNDc6gBA7uitBsCVE4Z8yczA5Z
	 3T9iC0CkptuUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620C8C4706C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170518849637.13783.13444087459709805789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e7f9c5528971683efa6dda1773a3f07d170e4c2ad81c252b1474b779476845e
Date: Sat, 13 Jan 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705188496
