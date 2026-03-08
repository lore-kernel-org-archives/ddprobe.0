Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3537F2765ED
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772993694; cv=none; b=KHdMrPSIgrtRri927ynj2t7+syDt3xR5QuudsbOzSPp9W6R0J5Nw1uEylpYk7x/YRmKOFyBz56PmRASb4U/rfpEApNYeQ08sz8JoPFzksMFWuBhL3ZDocqLgB0mCOh5S3oLD0LMFLAiK4V/Z7ichT76vg4SryIJ1Rnzx2Xa9uVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772993694; c=relaxed/simple;
	bh=8E3jyE80LVkNwQ/ICiC9BXehUVamq+IH/etfAdmc/0M=;
	h=To:Subject:From:Message-Id:Date; b=MPOq/UkaPISJx1Sv4iGeXuEzmLlZT2DhZYU1D+ZmtLSEM0v+c/bBf2Oiejlm3KD+3G6FZfXMnlS7gKjspXYz7khrCSQa44jM07MNvLGZcd9XmbDLZrr5BrliTMWoUTnaguXkX/E4aJejdrU8AnvUwk7xVXBPt3LWDkFlOwKz+A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bj1NO9Ju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj1NO9Ju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0381C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772993693;
	bh=8E3jyE80LVkNwQ/ICiC9BXehUVamq+IH/etfAdmc/0M=;
	h=To:Subject:From:Date:From;
	b=bj1NO9JujFNtav2ZIfPuzl3aL9aNoAONT70tBiWdihQDNuxOMB5ApQ4tg10HJY4+y
	 Brg4t+x9n3KZ+lSVYVIqo2fnOhmDeKNJx1lMLeSyfIy+jFhoiB+W8enHqlgNQMEUYm
	 ZeO31zK6xBzUTawYtDTVUtCoPNOhL6FX8LqT2cLLmhhDgh1SxK90CGbwu9lLAyjJP5
	 nliJhBBV/RMGLv38G4SUyt7eo+9xYm6ZsDvnMMyaglwjynYQRgFSLy5u0E0cB1n7jY
	 1ZVbOD1uonybu3av+qhqeSOiO9wH+2eH0gu7lGH1h0enqURW5dVi5GfBpp97av8iw9
	 m9BOpNNdfNbNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFAAEA853C
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299369362.23595.12768847619619175557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea44222805515b068473fbfabcb221a879b2aeb09550c33377139167e38614e3
Date: Sun, 08 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772993693
