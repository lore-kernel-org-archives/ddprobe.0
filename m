Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1998B4C98
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763831514; cv=none; b=VXuegzi9Q6xrf+kQ+gIlMDSr4hI45W+PuRXoqL7GkUO4tZ6nm82ss14vM0ocgiquHBo79Aq7hVUu0HxsFVCDPHjrIpwGVk+c5cGKDD6KNFg5rY6y5arFeM35/pcnUzKLyEM+6fHQfT3qbsQdw48fgwasa7PShIGkitEjNrgV8S4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763831514; c=relaxed/simple;
	bh=gmSWOvhgG92uR/Ee407GyKqi4drbIHPm+XwatRcSfq0=;
	h=To:Subject:From:Message-Id:Date; b=kS2Vi/ep3QTpoyoAMjqfeA3FoC1jPWL0y9uzB3W7kLl9i5wm3ZtJHPKriXjF3VJ0WjgeG4RHkKoS7wU697ns+T/riDm7QEefi0CIxEDfWZuSY42v2qHr3PBnqeO+1FxQHzeDwpTBafmagZVtzA5l0LjQKp1J+Ygd0gtZooDMdCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MO3IWiD3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MO3IWiD3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F4CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763831513;
	bh=gmSWOvhgG92uR/Ee407GyKqi4drbIHPm+XwatRcSfq0=;
	h=To:Subject:From:Date:From;
	b=MO3IWiD3qS40hwK9Vb+tMNTqyO5fWrGmKAd6ua0HjkuceGl0PF0PUn13ayFCmzpTv
	 aA+mnNdyBbseibTb3Ueesf3juBrDhF5CjMlJ+GJuvsLiu2/gvQ5JKVTbhh8USGRv8y
	 nCL4UCGU4jOr6FcE5lA9o3Ep1h69k46Bx+9mfDjzEh4ZnmsPwZJRxwTql67INiNdmj
	 NC6owMlhY4yzEkIXPAm9sWV87wULH/vMwfodCND/m6MMfQj1eZD7FQacAajqr+GjxA
	 XRNobsfKCsBq1c5kTHj8S3xroWzWi91ImtOysbKzBHMUBdQQeGmkjmbJ/HQDj4/p3R
	 mHFigGKdogWeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90525CFC522
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383151358.2717.6175978177548235094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e762721596e6c54917ddad7196cabc9398c591f3b4147c03155c16e01eff240
Date: Sat, 22 Nov 2025 17:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763831513
