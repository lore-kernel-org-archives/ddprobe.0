Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0988C33ADA1
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771970694; cv=none; b=MhzBd71ePxEqhILNRvie6pTy5Xhwaa+/PVsf8I+D1K1W02bxxGf4CKxRmYzw9tE/c1B3VIr7MF1K7LwYVvolNlAUfrdwr8UOvtnG7DUX2S5fg8e9OPFmnHLOZarq1I9yr2OHPVDKonQMyqlmz4TNAZviaqs5BgOg/s0Wa58JGwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771970694; c=relaxed/simple;
	bh=aSlUHQ2u6WjTvj0YKcMweP0cGW387Wrlf290lY2payI=;
	h=To:Subject:From:Message-Id:Date; b=jUcigVopH2fhoRJpwA/tq14Hb2CkZ8wFX4YrHH0BkQBcPXuustaKz0KJWU+dWj/GARwXKKAMk9XO3+lZ1zRGB+fijlu5fqy6EWjNos8L1FPyRBmkRyE2lMjHIzCNhvF6vNp5CnLO+7ouxulqdClcvq6hGTFIWrKA/+m/anfsvHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwrW+eZh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NwrW+eZh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC45FC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771970693;
	bh=aSlUHQ2u6WjTvj0YKcMweP0cGW387Wrlf290lY2payI=;
	h=To:Subject:From:Date:From;
	b=NwrW+eZhV6e6q8VIug3+WlD9iBJ2gAe/+OXwlQYoqrawKYSXCSQ9YEwKOMjasmw0Z
	 WhdxtGMviAGTa/uNf7NR7h6HURzQYASeFxBs5zT0sTv/sj187bl6Zrzuw+xAEX3Hyb
	 0LBUOVANzTIYSvjI7EcDuB68mWc2ML6vyUHkbJhYHDFkMrAFKAnlsYHSp403oU+ls1
	 SA95U0JITapVI8+T7Ezh8+1A4ln7DWXPSULJmHEkkYPdSk2ilbXk+zhJGTJGshPod4
	 KfYxwz0na4Dr5tEvJDwl5TJwVSvghOEsz/Da2vZO5rKiJCI3+QhE7eh2QMfVeN3OAM
	 n1ru3I4g4LCzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F62F4BB95
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197069361.9558.3109250006150060927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a1da6674d2ec4b9567b3b0a33aa84f1a6646622a1d647905c423af9a801f27
Date: Tue, 24 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771970693
