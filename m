Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE3921A457
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774699494; cv=none; b=Ayp5dIJND8Bb2FW1BuVdIbb7Z987ohvc69Q9Xlo2RNJDocV2qyfVGyKAwqiRnj390BK5gviy3iANQGVF3+xXe5SJmqeEeVfnnLG6MbvLhc3a8NLbnchgXIdJlEKfwCZ1gxOjb3taomWflrh4Fd3PDHLy2XssZuTiTIJkZTfQAzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774699494; c=relaxed/simple;
	bh=+qvvHa/W1IFmuEJuPbTNZp0FieIzz0ZgNVu/07vVcgk=;
	h=To:Subject:From:Message-Id:Date; b=VPH/7LSC8AzerkTPT8k6vgPVWkMv98q/tOdjAgj8Caa+WQIJuaOGNclGIZtuIf95yKNLC0LJiOSprbzzOcEoe1N6AzOEjyXEzxiDcg16DeaXU4bNTjxh+0J49CBgHfecrnRolsAFcjE5H3/NZIRelMpE3NSPNCoRbTwb4HZyAM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3/4yRYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3/4yRYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9446C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774699493;
	bh=+qvvHa/W1IFmuEJuPbTNZp0FieIzz0ZgNVu/07vVcgk=;
	h=To:Subject:From:Date:From;
	b=h3/4yRYsuxWF/UOYFNIMR1px2+RY9XbKELMhJXkYfGPpj72iBKRNHmG23InJzghPQ
	 YTDP4kCI0CNG8RyPPwg+GJck50rSx1HW7iJJyrRIeDYAVYlpdYefLFF/r/PmSWVMoV
	 b6kE0bOAKajacaubIMXfSYbAMoe6+YIWzY+D2DcZixY3Gqi0BZug39U/iSYmFzGeif
	 IFI1103wRl37sZ+OcAp0bHFpco1lwMxF819D5J/G+ZSLwgEI5tljvwRTg1BlbRX28v
	 9Hs3VfRil4t6NntHlWVLjkq9CBzS0UPn4lM3y0PuJa/LmwVQYzvWk7qC5lNC8tkQWw
	 YDbaC7ZMDITog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933FB10F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469949359.18548.7963162956354484808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b8f777a6beb57b1915688728bdc0c139c92304b76d61508462b6edac9e2117
Date: Sat, 28 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774699493
