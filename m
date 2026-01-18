Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11A47238C3B
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768761834; cv=none; b=QYiikdl9UHhbYJ8b8onAotupkU1jVH0fF07MNBjBwDE5HT0j372mlMjJ+dJu6Kq6pPXxKgGTNLYFFGpuRTBm2sINqAkyYLpcBuQJHs8GOHvAF6e7OUgsT3PR/oWkYiyuSmir0pGK3Ke5oLZBfiQ1KtgnYf3l8lFBbqnI97c9+Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768761834; c=relaxed/simple;
	bh=IMbNLbWWNWVpkUTjMakqDDExteh93XGkylHHbHs49zE=;
	h=To:Subject:From:Message-Id:Date; b=rr8pOyGpI4Nxg5evVhNHk5Yb5foG4wQ1O6cMEODjSC0/DIjkh0pnS21CUHthfxwsGEtvjL7byWRJ3C7DVUxHl5BMWSCUHA1SgFYt13lrsMMX0vDtZ1eUpZvoXI3Gokc0cythR0DRJrEVBOeEcdU3zUgPUyHBWwQyNRILCye7XC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1PAdw9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1PAdw9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A36C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768761833;
	bh=IMbNLbWWNWVpkUTjMakqDDExteh93XGkylHHbHs49zE=;
	h=To:Subject:From:Date:From;
	b=R1PAdw9WV+kJowJNhrAj+jxskSbNcYJC+0XPGfygjsXe2UqCvCG6r/uJTIJVi2IbT
	 4jYSCJ4mVVWiW/PsBnXBCNSrS7VvCELLGjURfyy3xCz0AyM/fwOeNR2LZBVw2pV5mw
	 m3/jYPTaifnY9MRRceapeSkCwKe43xqxOcgCwyXZLlWWIrANTIHwANwbWkSDTVwyrr
	 ecHKrL7mlbKo3Px4GDPDEiK9JsAfMQkgxZPXWsXz+J0rNSYOSwJCeq4QXKf9pBztDP
	 5R1HEFx57yqwGuB9soD8kegWM8zVE9mMogzREx0H8KlxzFepWzGBD6c+804ScU34zn
	 mlDr/7PYpvrTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954E0C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876183358.26401.13148673040464424934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c58ee5eadac35a18f0ae1d774cfd55d16d3fb6f6c909676578c95e3e334d44
Date: Sun, 18 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768761833
