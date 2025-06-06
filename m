Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B067126C17
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749251994; cv=none; b=As9OYZ22mSzF9u9SbSODx9gK93kMLMllusSlxNkWDku/9hgVRTMVW6eh0lXavZJYQIKleA7AX95t6PUPhWcmENTOlA6JGpw74f9KHRd02OtvxMp8Ki4D8q4sEeCn2iX1aIjT4lMEiDdFIsMuZrvpFSWTL8tOcO4CJiMIVgWH+SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749251994; c=relaxed/simple;
	bh=UwgvnX+r0/HTf2uDKtbzDLPb1iqQOHC5ZV31Yj9+a68=;
	h=To:Subject:From:Message-Id:Date; b=MLtJWfJWGn+jTGjNaodVwVJ+/IIrAqHBW3gKRviCUpttiy9M4OT3KvP1ELhov8sNrGtpteL3RC9JnIfAuSCe+ANwsmySfiybhRRLM2gLDlX/J/brxpSG/V5UWedIyUM9sP1nzstfb2W3IceqzrHjdR08ghSj3xogXVxbb7YkGJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkWmJrpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkWmJrpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADEB9C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749251993;
	bh=UwgvnX+r0/HTf2uDKtbzDLPb1iqQOHC5ZV31Yj9+a68=;
	h=To:Subject:From:Date:From;
	b=YkWmJrpJui8fEixpg1SLflRS6ODjrGLrujthto42mkmn/RtoG3m2SkYkhoTL8cslH
	 hEHiF6zpb+6flmNyfE9DW3UoHvwenpaXqrpsEoCOfOswlbAk48cVkO2VhYaDPC++TI
	 vgXhKqK4/WJFo7k6+RtXVlp2AtEc1y3pV2lH8Xusvti2/ho+vLV8RIjmU6e0nfTP0B
	 xAkzoZJBiskGuNNu9TPeYZPJYnf80Z+WEA1wVJabki44TNaVpEY5vNoOiSt7w5xGsE
	 vJazEdp4K/pzP31edtcAhs1jM+9Mki9ePs4kQ5SfzBaG/L3zzKbqL5f/sL2cvI2LVd
	 5Fok/FdKed59w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CFBC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925199358.21815.5735588679855883810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f526b543cec7300e239736e2543c3aeac09f4498de3233f7585bb256656c75
Date: Fri, 06 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749251993
