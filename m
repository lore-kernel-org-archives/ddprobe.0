Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FBEB19E975
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740901134; cv=none; b=qg3tkVVhL2NDHWuQewKtfE217DtUvtyTXE44/WuuMRQkdxBrdXhut8vTOvl2GuktK/r2yRdG1dLT6NIRlPS2afFFinh8v5cAoaiHLbrlSdknKoSrEso4yft3WTEhvRL3h0G8bX9lkjKvci7c5TzHGMwdnJSiuhA/Qo0VqvHsvdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740901134; c=relaxed/simple;
	bh=x9Uirb9yvwHinmkxHLksl9rKMOTZMrRbo3Db4UvfX8U=;
	h=To:Subject:From:Message-Id:Date; b=dK5eUCPfkdE68oUX5yjFy/ED6NuW0YYw8GqEb/raOcCu4+VVCW4aYw3c65IPWLCtIo5zFSSksAxFb1iy190ijBkHD45q3HGhmw3cMzlz78m4LdIgqJFBzCOZYyvJUNIRWk6z4vartsczX5NCj+x0vbOYMmBZwkSa8zuujvRBpN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggzCqjKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggzCqjKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B93A7C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740901133;
	bh=x9Uirb9yvwHinmkxHLksl9rKMOTZMrRbo3Db4UvfX8U=;
	h=To:Subject:From:Date:From;
	b=ggzCqjKyd3GeQV5+tLBrjre/CN7p+MpBSXg3Hyql7tzFeEPO31/pnDZ1UvEpHAvgs
	 E6ozCElr6OdqUimuZvq8WvltG0pktABYmlIWkUGxkrPW5TESEWbN7+gPaJKrwJd+6w
	 ad+QFjJLQflsYiu0nGmpB+kphM1BUfWt3BhwkL9W+NABd3E48DlWiRGYdWdN7Fp0RM
	 J1xMdU/rsaZMfBo4EBzOgo43R2/dIGD9NJHJpyYPIAanfo9vwXQz7iNoKhzkakvtuL
	 agxiL/Hb/xSQwFss1kAUZ0YVh8PoM0AWom7F3uRXkrogfaIFzG/s8t1kYcsF076JCo
	 dTTm3elowDkew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D323C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 07:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174090113363.26827.14894017491769768182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94ae7c78008a010ad7781591b69bcfc3d2c63243165f541fbc8021049cf20549
Date: Sun, 02 Mar 2025 07:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740901133
