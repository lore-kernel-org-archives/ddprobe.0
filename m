Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC49EAD21
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C86AC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672786887;
	bh=Fs30RJ1mmi9lrS5WIk87yQ7PfqLs3sA1dQ1wE0v77SM=;
	h=To:Subject:From:Date:From;
	b=sDcbjFQmImKjeT4RZh+Tz6h9aSdgmiGZYDsHuaMjlDvJb/vt5Ai2fr3PIpeMlwUjh
	 xnvgRpjd2mM7ZcDQkIC8Y+ufOXLKmLQ3eweVkXVf44VdQouQLTmhlXMOijP2WHRuSK
	 nlHIgCCjnBtOAxQAhjbHoADVOb8X3mGNjqa1SBSkMD0BUrZuqTI7wde+LFiDN2E9GK
	 7Vfyvr0tl2HXcwf79fDhrS2nW8UiOvhNw5itvjcJq9UGKMt3OV1My+Lee8tseoxJR8
	 wDmyxdRnVS4UpQOjTNYBb0ZgPvp07L75aQFwFjqotRG4eLDoR0X5ENped64fmtX3jG
	 AQEYfsVDRUFAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EAD5C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167278688744.20627.11990538231958238550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fde094bb75fa3336f68c0a49e821355c984bb53b6f7b6da94e3444168ee455e3
Date: Tue, 03 Jan 2023 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672786887
