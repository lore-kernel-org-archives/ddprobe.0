Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27255322522
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779340234; cv=none; b=l1ENff/HDkxX7JMoMKDRLmbydVR1axuMFstR5K92Qh4X8QcrSbPGlUOGrz6I3TpL+kO6I6s+i7/gdgV/b21ful8lVUHEtNzBmAYVgDWBYAA6NF9oUXKOgCqgi+Pr1VcsdP8bD16EFJ85NKsxEfyApYhXI3cf8USvrg5zU8FhqDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779340234; c=relaxed/simple;
	bh=xtxyhMpJFooGy4G/UeN+fFzcFPsfMD4R+EM5n3P9MPM=;
	h=To:Subject:From:Message-Id:Date; b=uZ6uIuqvvEOrPOUKk2yCBzJHP+YXWsJSZfPM6NqSqaGW/rQgazWtUPgaEN0QA/sDzEYOQT37XFSx4QmP4EdyPRh6ogs4W81vp9mZgI6ZAHdwDk3UJjtaKrL2eVp3jE+qBsyULu6FVRWINI15kzz8WpiiOyvztCtjJL/VCQByQxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfGHMKOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfGHMKOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D06C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779340233;
	bh=xtxyhMpJFooGy4G/UeN+fFzcFPsfMD4R+EM5n3P9MPM=;
	h=To:Subject:From:Date:From;
	b=RfGHMKOTkiaX0jxv0tMU14O+YzWrhhukqr0Ye92V+3rc9/uIxQu1m0F9X3XWnwzkz
	 p77olDZT4bNvXLqFHgZ7SfIpimCZkskrhS0mserBXZpCfjJ9e5Y6J9a39hNUUhZ5DE
	 gg4JogxTGGK8WhU8KfPX0s5wYZF9tVMi6ovW+uJazbXioxc3xTokqqA5Ezt/mj29op
	 jTr71GpXMdBmB+aFyLkH4CMlGhCBvVt1x2+K5logcyeLQXaBqI/qt01k205DzHc2Fr
	 mYZPCK6hz5kuv1a0DxQFAqNnuyr3nUpZdqUinxyVSljRWAc4RlpYlqVDwoLuEpGyZO
	 0JXuUZolRb+fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BF1CD5BA6
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934023371.17790.5491415154320278045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f601ba79c926b2d1f6a4cd9de1525445343c1efe545fa16c7b8e6bcb98283f9
Date: Thu, 21 May 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779340233
