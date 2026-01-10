Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DDC200110
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768031634; cv=none; b=Ruft+5Cpep0wcx4AiO9d3ASIEm+m6lq4hAgwOWOOHWd+TmjQWEv5eDTIVth2I9jGkoGBthj1WE+ggDi2Wn16EAfQLyW3owzIPPgJfQM+6uGM7f5Ng+6dqXFQcbK7WfVx/tuu3Px0ZPv/r63Td4znPM9U4P4O4V91Ag1G8b6tZWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768031634; c=relaxed/simple;
	bh=bB2KTAH7qz8DYVk+GFpJXfLwXqi3KhgTIibvVzqS+YQ=;
	h=To:Subject:From:Message-Id:Date; b=YC169S40x7MyIgbW0/mhc5hp8TUnynXefnK7r2lR2ZVHrgc/eLkWYjvvnnFsE6kD4JHsdmb2D7uo7NRNl21ELVFL5Ct+zcO4KpPi96NvX25XRottqOfqn1tf4MWTooY51DVRG8OucAkTjEAUEI/fIxuwzuqVQEUqW5msLnt8T4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocoh6/50; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocoh6/50"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3295C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768031633;
	bh=bB2KTAH7qz8DYVk+GFpJXfLwXqi3KhgTIibvVzqS+YQ=;
	h=To:Subject:From:Date:From;
	b=ocoh6/501hEJWa3Wm9kZCQDkzzSTCAQUo0NE0eUchVZFlo8zo7p4xSyO+WNzAUIIU
	 DZO7n5LNuk8EjNQhnEPOdjRgIh+m7aalIgxuNIMZSJRSlKKP/vJDWluZNQ8uguTeJ7
	 xMmaIIoziVU8keHQv7aRVc1DQfoat9VWzbgqJH2Fkx/c6EcBKJyCG37CAmtXuQLjuM
	 CI0y6bYw0q8KY3Stl5tOcJejL61XQ3x6xY7lgmgIiWt604kgFzYR0cxMTxRKOTt9OA
	 Kdg3YXYIT4HVJ0uElcUg9IKYA4h7LB9TxZEcfH7/w7ocHixOavXGi33yexoDAmWYWY
	 XvhNWxlxgkmkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C8D277CC
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803163357.11248.10996502258098934306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19faeb5859d474af7dde05733a9bd2292077b77befc93265d536ec41b08134bf
Date: Sat, 10 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768031633
