Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E2B186E56
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724094954; cv=none; b=OReaxTEO61VrivOTfVeBSRxIBcD/5mYAhH9kqFczxuBXfWUHZseXdT6FQlneDHKUORJzlc17s+TYRp1uEBT0jZZ4/OxwY1YE+P4IYMP7nMYlMn9G7XtAz3keNa3UWw/rgFPktUSj3Rsie9PyYfg8pa7C68fKnFk2eiAOW0+T0Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724094954; c=relaxed/simple;
	bh=IjU45D2Zcn0b81rak0WKa6GjC8Y+5jHcKeeNlfuoBJE=;
	h=To:Subject:From:Message-Id:Date; b=PQqoTe/EAMrLoRWLMnc9KCc+vf3xSpOE91WDCyBTcjIVKa4rRYzXI9J1WIOP18Or1PSPopsnEta6GIJgODpAa7bMPfP7gVBIRux0vUIvdATKinLc0WVE3Nk6FSb5AVtXPG2NnTxtUjo3uyz3H2ZrzkC8dCy2LevyL/DPjhQVWhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NXjDABr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NXjDABr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B074DC32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724094953;
	bh=IjU45D2Zcn0b81rak0WKa6GjC8Y+5jHcKeeNlfuoBJE=;
	h=To:Subject:From:Date:From;
	b=NXjDABr5ZLxwkXiQqszY2bR5gj70kudb155w1HJRgAVvG2F8n9yFwv3hYx/vvWqW9
	 bOPwubvkSsZ2cA1iHNX8/5Uyq81No7/FZ1n6ZsWCKzbJzolDp8rgiSWpyyRU4aEHeL
	 Ce2VhsV9xLrZevPWKoCg2kSui86F2A7pjXWkii9EcSlQ63eHN0TagjEFQ8phL6yNMk
	 VlTvOM2QTtg9LbjG2BOUWQQormYIeZzyNwEFMiQh7CkHwuo6w5yy9aTC8E5JgHy0VG
	 ZR6AxkX6M6l93SgEGA2Ct4K5kmpgDz4hMMSCYIWOFjhcuhE7ShqTZWL05elZUx3yaN
	 Gb/G5kT43LKpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9701BC52D7C
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172409495360.25666.9802280487412862595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974a891a9f7622c0cf7e31431baf22d324318adabc8d1cb14290deece981abf5
Date: Mon, 19 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724094953
