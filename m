Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D654A26
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tn4g4iIz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 883CEC433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700389696;
	bh=c8yWozaZzESEjDeHXMkltgHuu7E87AniCtwxtzHe3Qc=;
	h=To:Subject:From:Date:From;
	b=Tn4g4iIzs8+70NNWm4nI4lEJ3U4r9hcmWltGDwq3F3M0tLx0qveFdy140QMoKdRgv
	 i5kNjXLXdK2tMQoBZeKKFdb9YLXR5BBoL2y4ae7ZnKRjRZnatkVJW9kdUJ7tn9tu0K
	 wl/n/YSqbptYMnC5Rvur7WPuBwrt9qDDNf9whvEJf71Q3Puz3zL3QUWYEgIy7hoLcp
	 9NGwH4Ez0kd8xUtoygYhpKdCa/H6pU5k/JACt54w6Tlq1IL3Z5LybcU4kRZ4mUJslv
	 mon7EWV+4w7e44kBafE0kwnTBQpjF0k5eK3HACGM6KRdkns7Lsu5YcTqy5jjaLeZdd
	 JaISI/6tiKhEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D16FC5ACB3
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170038969643.25877.8834277608103610607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0982af99c4106768b4cac2404793c059bb642dd73489d9ddb9a42a6a5a230e26
Date: Sun, 19 Nov 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700389696
