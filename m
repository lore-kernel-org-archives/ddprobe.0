Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75FD1B4138
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778664634; cv=none; b=SfFaDfJpR5VyUXMMQZEAxwFUf1Lh6HXPOYrfKOyhbFBnPxMB3R4q7lCYCudPcJo8iltxKipE3qWzadSRZDxW58CUCUwSnqtuKgMHoB0v/FwdNmC3FhAuC9wW6f08H2C1K7SS9uQwHhR0VUiJn19KPIVVW3U7mQ6Pwvek/TCuTNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778664634; c=relaxed/simple;
	bh=t8+Sp2w5+MfPAkFTDzdCsaAcCrc7EyIis9pM8OlYmZE=;
	h=To:Subject:From:Message-Id:Date; b=OdMqDcsJReP/wFPD+s//8+YvcXYSqbY5B6kPw2t6IQ7FZTdD5l4EyIdUYbUelS+6d0ohZt6JLQ9i+UAk+zt+20LVB6nFvVGV40uyyf4w+2RIgk9jgw79z6TL4fXhrdLDWvJtbFjtVz47SZwpBzlcyw10t6lSKy+zLcbl2RshxKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKZsWYiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKZsWYiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5BBC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778664633;
	bh=t8+Sp2w5+MfPAkFTDzdCsaAcCrc7EyIis9pM8OlYmZE=;
	h=To:Subject:From:Date:From;
	b=UKZsWYiIhN5TLqSHYwXgSCv5XgDSnzQY6Pa/U6WyxSpZEdDwQbIC10ur8cdg+cL08
	 pf1PBHcpHx43UhSEMGi7D+XErTSCulUOFxSB9tNuUpXCsnp1HyxO5ciqY2gWikQ6X7
	 MV2X3oy2jLQ70qJ7BG/gRHxYyLWU1FPA+gT29D0hIElr9ujsQoPYmMtPFS8/EKruEg
	 kUtB1jJIHqBrzxgHOlq5JvnEusQgNwzwIbIQ4H2tYRE8D81fsPEjKZvtmbt/Ra+fvT
	 +Uub2tbnxm/Mdz4IvV+HJjjzGg6qt35/5km7CCFc9uuMkc4nZuF8HB/ptpaykMuX2T
	 eyCLm910TVIoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EC1CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177866463374.10943.8398734054893445194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051dd67724777e8800d54a2898d05e74186be615f7a43dc5d7ed73fcb995db30
Date: Wed, 13 May 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778664633
