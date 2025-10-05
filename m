Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2567434BA34
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759627794; cv=none; b=rMJryIR8TcLM8kPyDboRCB9S/CBfPkZNNHte7SQszPhfRkb4EORMh4gY8TbUYkDqUEOa0n8gfUgRdqD2IVWJXfccfDixAij32Vg4T330+7pPAqx6xmZ5U8KNVyH2S+mgb/CBRb0dou2rPBNxI+s2V1VvR2vUx5Ds32ZlYr+3OjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759627794; c=relaxed/simple;
	bh=Debx8+TKg3OQ4PUbyTH9ZYAHS2h+C2dSy1BoxhnLjuw=;
	h=To:Subject:From:Message-Id:Date; b=JYxqd1lPOtsqWaAgLjyjOyKRpVpfpNZ3/FzzUw/5SFKHTc6x42oLFv65dVZucfhRzaFJr1dwYN+hzcVTVzZWMYKanIuxVg4ttZAQRM3ke+Zbnlp+vyoeKtWREAV3EWo3W24BmwM1O8AwZL0Gfrw5XJWm5vl8NVruTFv2sSu/EYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XD1bAptt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XD1bAptt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0ED9C4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759627793;
	bh=Debx8+TKg3OQ4PUbyTH9ZYAHS2h+C2dSy1BoxhnLjuw=;
	h=To:Subject:From:Date:From;
	b=XD1bApttjHYHlOHQci30HW9wU6/FU6k0Ua3RLzIuEWf769oLy7Nk7sYeKzivlLsRv
	 RHl7aZTBll8Ju8TGGhXTxk1oJTfCmG8FLFfL3gn65rIsrUuKMWpoGnSUWeBelnSKLi
	 VoWATPkfyav96iTVSSrrp7jyWCckyMZdUj0mtuJDhQjf/JFwMKbJgOoiu0ygjG4+Ln
	 5K5UBwf29EIT1ZR4O46AapegICNBrlmClt4IfOxKRUtHVBWBbNFih3/CtSH3xnAHKj
	 jGYYcbfZuVXxfjrufGrykpDtY8KITZjWQaHVUVYkc8+f96vY7b0q6cuuC6DS2UmD1O
	 YV2++mbvJz+Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F80FCAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962779357.25173.13422017300303902284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df683ef7d497b7de853d158216a075476989dca9c2454f743937de3322725072
Date: Sun, 05 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759627793
