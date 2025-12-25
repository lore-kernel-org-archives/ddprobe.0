Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34734800
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766637834; cv=none; b=o1tVNNf7eFSSkG0jTSRmqnhjwTOy0bylHf6SlclurSVyiQEQZy2sMJGWBYFUz4BrPh06LrOeP3jK9PN0lyiPvnVgTzre1d024NdzmEY457PFkqam/ETaAsep0BtkuVrwKLrp8jbIRxMOeutHY6o6jhf5SNnz4jQpAoRhdCLmXl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766637834; c=relaxed/simple;
	bh=395qjFKnrMQVhL5mQfAHlSWqRfsVr65jj5J1TdJSSac=;
	h=To:Subject:From:Message-Id:Date; b=V4cRwO95u+jE7Vd6wpCgVMtbDWS7O9QyRWP9cgtV+ofXa0s9UVkNXFHSzD5W9+WCpiPeNYeFwzFygkKMzBB6vvKB0ZESc/zAgi0bXrn2bXWPSD2qydcVlUqhzXEFjZqCoO6Ib/ogM6mXwwJf8EGAUmpS0RKe+1xOTuwZ7XDww34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqXd0w8B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqXd0w8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A755EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766637833;
	bh=395qjFKnrMQVhL5mQfAHlSWqRfsVr65jj5J1TdJSSac=;
	h=To:Subject:From:Date:From;
	b=YqXd0w8BgN2zdzWdIL4raVhRNR+Brg5j35EoWgQKUb/gqdyV8fJDL8QX50QgVZU+3
	 VR5oQbXXfpokT3vc/ZWkD8VpCrsiSGj7Wbd2hR9Q8Uq8joGl2bdtXnHBBHKavoMaHx
	 hzewPndmi8oUrpR7tC97KvWBxPIXd98uImpDpgGtJ+VFrZ9OXJSTHXwRNPUEYaYiEf
	 ET+jbxgbXnL+2XrN2k1hRcHu6rU+6tNwPi1xlSV4vsSEunBHf97myCGKRKabj1QS5h
	 v7hK01/31Bq4wd6y0/RckJ2BGnrEesVlBzAg2qiwhEa1I7ONePFHMgPD+frQfPqrdz
	 gUQdT91PIxL8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A98E784BF
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663783358.12109.9565762232330856944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 301a8342206d90deb65729454f3c47a77c9bfa9f03fbb986c1048bc21b09c83d
Date: Thu, 25 Dec 2025 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766637833
