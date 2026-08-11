Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE2933DEC8
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786468834; cv=none; b=A1JsBs9r/ZxRgFA6TOYDJ8GjBgA6lERs/4FuWsji31JGTk86jWR911BfiuTvgei+FjgRuBxJNkZIYMTxYF18vuyr7J+/JPpmoafvulC1jjQhoN6oGl2M2S8pR7dsS0dP0VLfG9EWrrp16A3IfeB7zVJ9eRWQE+MlovcPMXbkF8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786468834; c=relaxed/simple;
	bh=U6iKoy2C6c9yHiTrQ6qQ7+tU98JUdTVMBA0F8ld0vMc=;
	h=To:Subject:From:Message-Id:Date; b=SxEHV5LNx33+uiX3IMIbDCGXB7kdMD/BzXNriReAgFCEsOZtOTdfKJR8KXZ0U7aNWGcXAQ0J5eZYRus3d2k2gC+6w35w4zysGmLcMTnW7J1YZjM4HqzGhBwg+0RBdGh6hC5uyGeYd4RQaghguTkneJ/m7UpzMOjI0Yo46yWc/jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzZBjFEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzZBjFEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC30BC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786468833;
	bh=U6iKoy2C6c9yHiTrQ6qQ7+tU98JUdTVMBA0F8ld0vMc=;
	h=To:Subject:From:Date:From;
	b=OzZBjFEsosmeLSAnwheTBx6DE9UVkwB5NPZZv9pPX6cMYDN+Glujk0mHZ0Erh+FIg
	 qQNExh4TPsg7L9nhObFfcV8peV46Z1BC70y+yKrfO1nxZ8+t+XPzJpzZs0hMJl7j9F
	 4D9zt7lorQqh8kFG0/816FLaZcRixSyniSCiZ8Wjbl5aTp+yxcEtKVj9nkfZTAW10j
	 AGUmGDq761hm/o8o1VzvHTqbMKiOuodOzTeys7dGJOYdQ5cIQHA24198Mf/9AHQdAI
	 wDxha5zj6BXqicTGpBsro8DtMF2cTtXCYhpffeWfQKKyEylEgoCIpH1dJhVtIMTEwM
	 /4l2AZ4TadVzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A936CC5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178646883368.14346.10917281985541662351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e652f3c6437ac359e020e5fc7fff3341a5612b03c235897de46b6d1b355e425f
Date: Tue, 11 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786468833
