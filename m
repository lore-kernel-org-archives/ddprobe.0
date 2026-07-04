Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C2516DC28
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783129714; cv=none; b=Ev1mW3qgcRth/mO9vi91AQsn0QBMGZwvQD54di0dtTaYrJ4/b8BAmPw6Q16/mwfo4rfiDnQ4SAPz0lfsWJBfrZuAKykQ2zn9fABwsthBrMndMEiH/OmnDb5F+ENQv45P24TfECpd/nrDUI/rCTDDMCiA5bV2hfYfsia10JxFNqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783129714; c=relaxed/simple;
	bh=6d6f+AgbHJuE1i6KE1KkP9C79lUHaeBpL43s044+SPs=;
	h=To:Subject:From:Message-Id:Date; b=YB+e+0CkA5aIU6Nrd4glNG1npkNzMArEU77SQftqhaWfAxzTvlpbU2ZF5C4uiydhAAMGETmJXEFUqCSR9jYVcSJdCbaF4k/A/pS4Pe1My1nqiXWq4YH6/KP/jkAgYUrTL84V9T5hLzDliZfucRbkdobWolUG8k0/O/j5qbB5yN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sj5hQ2c8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sj5hQ2c8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C67C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783129713;
	bh=6d6f+AgbHJuE1i6KE1KkP9C79lUHaeBpL43s044+SPs=;
	h=To:Subject:From:Date:From;
	b=Sj5hQ2c8VfZl+moYK3VX/pqw7KQIAF5zr5n7xr1Tqo0HF/L1Lr+6WHTZ/4G0ucqq0
	 LNxkHFhIUP3sKoH6nbEkFkT2gA1dkFEFdFc8WWvYQUbqnq2Xj7BW+D2MC300refDf3
	 HAxMl2Nsi2HX+ckjC9Q6gYT2412l9GCklZYT9zW5XFiymxcn2Y7HvGEhoFrn3Tyq1c
	 XFtc09K4LsjKB0JMs1fqHFkOW96ZAnag4k+NdL8EA7Lo+jFybW7FG8TUmOJGU1rhpb
	 xV5MhCq1ZozMrSoWdMtmOOLT9zs4rnjKyRcHoeBs+uSGp4f7CStnnYurR8AevsQH+e
	 hLne+iKuVpZcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BE6C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178312971369.13970.6573051036936807438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d74ae1cba8ab044c74b877484902fcd772192949876f0117d61841e4901072b1
Date: Sat, 04 Jul 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783129713
