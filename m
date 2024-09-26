Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F182AF1C
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727361954; cv=none; b=g5l6beXEGxxZnPQFuvHYjvkdKHFZ/KZ5hzyfUl5svBqDHK2RPSoT2KULpmYLIjYqPcZF5spp9eA9vtWLrUUeOPA4+oNLJG2p1MozOMn8zmwT15qSCfTKzVmA+MqS9fkiWNdcQRBqpKKfexKz8OZTXnvJ7OXH+KzGpFWfb1QpMvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727361954; c=relaxed/simple;
	bh=JosYfWNLYQq/WtXrrPRK7/fwtIT1ehD7KkxfCQ1XAts=;
	h=To:Subject:From:Message-Id:Date; b=q2wjgAJEsmOKYN/Qk35kDJVP9Ix6SXj/cysQ0FZ0Y/5Fe4N2juVrW4RfT/zI/yk9QgP8GamkAv7G5NXbNkUhd0yAsMkeoj5nbrKBrlbuHRF/lJ+Xf1rF0gZirzrGAicWAK+/xJgljfn0x+vvjTXIJnTfwMRiHgOWSVEF4HbUx5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bl16D+Is; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bl16D+Is"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6232C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727361953;
	bh=JosYfWNLYQq/WtXrrPRK7/fwtIT1ehD7KkxfCQ1XAts=;
	h=To:Subject:From:Date:From;
	b=bl16D+IsSvGEhCJNAAkDvN8W7IG/KoMi/4H/AtePuuLOTQeDIS5QCRfWXfMffQ/XJ
	 zMf9uu7PxJEEd+332sr8vcXDHplsYwHnFF69sVWRQvy0zgpnLQY0qmr+NzavyhfN1V
	 MFh2BrR5+8DJPXs1JqtPlGcW/VvSpI1Bn0twbsVf/dSLOAdZV5A94a4F9PHj9wK0tx
	 MFgnvaAJdOXatRB5EvpWuAuPHCGVoZDUKoq8t8wQ/DL1hPS/juCmppnTC6WD57auto
	 mK6q725O+XtBJIuAKV9HqfFzKTu1y7hBYX0zjPaLKZLxdZjVXf6SC6ba/bFWzbrkye
	 uveVynCUI/4Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ACFCDE00E
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172736195359.16991.17508445692548399175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46311e50373bfa3e856d849bb0207289cc0d34031246bfe5d1183ffaf75b6394
Date: Thu, 26 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727361953
