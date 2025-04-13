Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F0B1917E7
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744570194; cv=none; b=Wuq3OMQji1kvmSU24jCxonirhzGaWqKTLNHWnf2qsZ4A8CdIlkqx650r3CCGnIygQOsFFGii6wWGa3HLOSjw0kctlKica/4rxF9/ajDoaksxg0qwVVa/B4yRXffqzaHdNhzp8Gb6Kf2pu4S1KkzwLrcI3VveIDuA6F7iXwM7CoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744570194; c=relaxed/simple;
	bh=srkYzb1fqPwJ4m7Q5ZFSDQx8tIligv/G5EOeQKFVVSA=;
	h=To:Subject:From:Message-Id:Date; b=QOcHaYRxqiNl+PgQZfkrGsDKYp4kRNufsuucyQHqbVJ28omfPcHWz2F7oZIY7Dv0kheZEu9VxB8T/R1AtxvAEEoG0UadRS4ATUuem36IAhCT8s6fiIh6hGMm3AzdyWSQcPtd86eAOjWkpcgUXm+TNmAoQz7cSZ3MAx1SMUIxsOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJ8Qd/Vb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJ8Qd/Vb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCB4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744570193;
	bh=srkYzb1fqPwJ4m7Q5ZFSDQx8tIligv/G5EOeQKFVVSA=;
	h=To:Subject:From:Date:From;
	b=uJ8Qd/VbWkbysVvQjsqqMbKv6oKEGVcF263/ew+QTlXpKQcBVLTiZ8pnTdxGp7ndA
	 yyM+voW84H8o6cWY7cCwvJ17/MXBkrRUVR5lfP5CF0fVZvV7Wm7K4+GWIXsdcCxxEY
	 Ivxwa5zKsgMe1gU26kiNu3iUB1mGnkW/gA/YH2Kq7MyufxPKbQ7h11BIZ65BSqQ6lC
	 n/whSnq0Ea+cgUFmZASQB7Z0LhEV05J0AjYo+lxYI7exi18wPF1b/RgogHDpPD+5I8
	 958XWczU9pZCOeCTEyK9KQkfUwQXsuvWeToIQVngn3JFR2OKiElsPzwRTFyiC+6vG8
	 rEFZ+6yB0jLOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A68C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457019365.27043.18043798622666234625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0661c35bee1205844a672aa399e301746d0c1defcf1134a6458aa65f0bf44d87
Date: Sun, 13 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744570193
