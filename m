Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DE36A8C3
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709308697; cv=none; b=CEkStO4x5CasiFQEvGjwVdf5w6ToB7HCeHb/j8Ei1Lh2gna27eIqCzJOWo6fwI60cSuVONayuSVZ03gWEQGjbpy9rb1gZthnMa2J1vr7mtrC1X9TYetO9gsLwf3SvmRa0hbGIM6PE7s6YSTdBP5QWk9bIIFx+4k/9iwixRhQjhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709308697; c=relaxed/simple;
	bh=G/HOno1QOZfBR5QFbboMyzATVlnDff/zcLUfv2KkkZE=;
	h=To:Subject:From:Message-Id:Date; b=UjXw2G3BXwvrP8YRFxWF29G/FL1Jlzn/NO9XiH7feXRLI7YU6z9sih9BbqlJlrb7mME4LSOTuxLs5moLCNM66EWqiIhgYFkINNhcG6Es03v7pSq5YdTw9f8leNjAz101PJqSLGyJ36yFCI/oQpDPtpG7mQUs/Xbdx3xFZCl8gIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5y5kemP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5y5kemP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81C07C433F1
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709308696;
	bh=G/HOno1QOZfBR5QFbboMyzATVlnDff/zcLUfv2KkkZE=;
	h=To:Subject:From:Date:From;
	b=c5y5kemPjYm6P8Sq6Z/+SbcrUt1PKeMUdLQb4SJVwS4uLguS4FVnvyZFDzGARTESG
	 40tEUzgVHsOTI0RmhDGcjraKxctY+HmjeCXEOmSii9ewvH2DmFnG9vViEetv8jlsjR
	 3LtnHP/T3AEkPD2Xevc6LcnlT6tw7SrUM2wb3F9J9Rpqf7BeeRUTVqF5sLQ5B4XCEM
	 4ObtYuQuIddqOhHtrHSVMWb5drSMufvT/FdXVxQ7wrRPw0lh/iFXZJ0/a8rV8EjGEo
	 Zt8tF4VmfBeC49MgDQ2MwjRIKkM14KPS4z2BJ5FSGFJQkfqZRKvFSw1SdNgHmxNVdp
	 CJQqIClcj8vvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E5FC5478C
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170930869640.1911.6230018230857712298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dda93678889bca29ef37d8a2fe227e544982792d7522703037829cb332a6caa
Date: Fri, 01 Mar 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709308696
