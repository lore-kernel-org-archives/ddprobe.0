Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484957D07D
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738622754; cv=none; b=bVg+Uu7lU5qTS1ZUs9ujHWRTwXqnTyezhA93+3Pk785fhN2t5jzWNSRJVePabHPkRVk3yVAmDDjcKFruDhcwwH+AfeYQCuvYpSnwPUHfRuAyoBrex4l/aEmeHDNwh28e6amfZGFpia00aXMU45VlDDH9iSX9nLqe7VH6q9PIdiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738622754; c=relaxed/simple;
	bh=clk7QHjHgr+/LcN0EoAK9XtD8Yj9DdeMXRQHm0tMM1k=;
	h=To:Subject:From:Message-Id:Date; b=iN42xH1h5ksySBK95Q1NGu7DaJfdSQdUAKGBpclrZ2WMiXwdKMau12hMsNkvH/2SLH2rvaFJwi49G1a/UeBe22nVfhA+7jrOYA4mDcNcNBZgunEa1+rZqIKyiAFyENfs1/Fhm3lO3fqQ/FpH+HMx6xqTYB+PHhxeG2f3BOQIkoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KI9j+IIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KI9j+IIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5380C4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738622753;
	bh=clk7QHjHgr+/LcN0EoAK9XtD8Yj9DdeMXRQHm0tMM1k=;
	h=To:Subject:From:Date:From;
	b=KI9j+IImYan21vRLJL7+wQzu7q9OZ4KBkSaOnvWboE18Fl5KOGBTlObppdyfjYIpS
	 MNwWHh4OZmVyWCQMk6G+3JaELXiU5DQDnG4LBgTcQ2iX4TNNTLgs5ZZB/cFX42caRB
	 gYzBu38oBNH6bJ2nQ4xZSzaMR6udXB4oD92U7wtIZ9KIyPbkfaQxhoe7mqMGCjtNo7
	 EEiPOhFDyK6HobLWKgz5C3uwIzPxgRLq4mguxcTswiMfKO8cuK91+fdI+iDgh3ewex
	 C/Obte8qDaqX1jO1Vvn5WR0XAVJt76mfFCNnGwiTlUqN5b+qmHXg4FjB39o7LkUAvc
	 zVM4HalqtUpQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1548C02192
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173862275365.24728.12716713049518067060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333d2cbc768a564bc929339bde588774a0b85796074e1b6c42b37596e41e55df
Date: Mon, 03 Feb 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738622753
