Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ADB1DB377
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757227794; cv=none; b=DXwWRDFVnqqfOy+vZWGbBenMdnrC7zYzzVq1DTp9nQsEcFzToZ91pot0sswlAQc8A88/IxEbo/PvqNyFy7X7mixS+IrgPmQ+2dPZyDrMOGyCFh2FXMldTgCBRcJ2gzNYut+71zL5/+jCUaZ743tz13N4yA8M9ESuDbLer8FoEMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757227794; c=relaxed/simple;
	bh=xpTafEvfaOy4bkL9KqZVb8bI2f3mdCg3hi2OmFRRoLk=;
	h=To:Subject:From:Message-Id:Date; b=aiHn5TKdcoYY22Q++mCLBTkMg6VKF0dbCuqntznA16/uRFpPJXnCV4n/Hm13peTa0fWECzFeevUC+FktqaoiNpnp4FQzlECfnt9Ggax+xf3SEPDB4OJslc+5JgGq3UcRweLCZ0AOOLscJt/A7NzgBrTY8D9fNnhNiGA11RHcTY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbzVODiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbzVODiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12D3C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757227793;
	bh=xpTafEvfaOy4bkL9KqZVb8bI2f3mdCg3hi2OmFRRoLk=;
	h=To:Subject:From:Date:From;
	b=UbzVODiYmqJmRajbJ4TUNS2coyHuw9yj/MxiKAwV4q6xWow+Bhk+rEri+E/QVXz8n
	 etzlRGIsSX4UcqLBjxIJ9UNemIPZWtGSceFI7Ndk3aBHfJsS3Dmhk76366rvuN8Wco
	 vVgksYx3tBnlObiFI7y/aZB4uvGN98znUiDn5lYpxgmUX//oT+2F9BkwlIL7JEqoy1
	 RgrZmYBCK39E5CYfdHA7gdm+c9SE33sPjrhR+qaWbn3rRXeda5GdBGXi98vu91Uj+z
	 JFt78sI5eFmVmZQbbzIHRCLkgvgCE/QgOpxPsHHmE3zCb9CokDrmWuYmrpshrds1U0
	 I+ceiD1hJCoCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E3ACA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175722779357.14391.11185825230480808784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9ab173d579db8d64304cd3c3722b08dcd32e643cc45fcbae75cec316e6daeee
Date: Sun, 07 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757227793
