Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C1323AB9C
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761112794; cv=none; b=MFAZROlIXPFRFdCQ1nLuTT0z8qlXwkq1NFPM3dYmM9l3OXFDxCgtvbC5q8qs1v6zdgAAjJk36MZ+HBBYLItg/dpGX4rUAaq+82r65Asz6aZ8gYcLgq7VtM+3ey/Wwca1WbiV+YT9q24T7j3047WNFbDktEQwIzT80xwwK+wTMYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761112794; c=relaxed/simple;
	bh=ZFwasWaAfdrZDhteu/XDtdiu+p/aGvu5r0X3vcGHVBE=;
	h=To:Subject:From:Message-Id:Date; b=MBhfC+zxDyha/t4YgCrj1yWOoxWbaZDJU+IEKIJ1y2HjA2wibBfJlfSLWbxWj+/xqLZtFOidfwYpktghEZV5isvyZwHy5jqJ/de/L2C115tubEiNJWeqpLp07ec6a/kc7a0jzTfC1qI4DG9cH2B+caL2n0Mkk9oKtYg18lczvYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ma6BmgSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ma6BmgSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B9C4C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761112793;
	bh=ZFwasWaAfdrZDhteu/XDtdiu+p/aGvu5r0X3vcGHVBE=;
	h=To:Subject:From:Date:From;
	b=ma6BmgSkd8WFT4FIfvN1gzNUglv1xkDNL2zB9nEiEaYFX5U6t/JjLaSdNGipAtVx2
	 lHesJnINXcgPLk2wE8QLbLC0oonrtmRmRe7l5ctZM6mXF6fWP8TuzzYAmOn1170Hls
	 2yo/33Ykw7z1I/AFxjXI2VaRMFK9kd0E79KZn7ElKdlkasRk4M9nXt6iKqEFUzg/EZ
	 +PgYoL3qNOmU0d8n/oCN6uu+QIZAJ4uMVHtIWf7TyIlrSYDJHXgljTDEg9KzGegya+
	 I6brqAajjxMi9rMbgeAGml2YTezceBf1zHd1dZa0x/SOyJUbHS6rm5izUmsR1b9owF
	 ghCPlW2tf7TIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F3CCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176111279357.19083.14842793969735965828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70d2e9ea7bcd46951a7960aefceae4e41987ddefb192207a25b396231c0bf72
Date: Wed, 22 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761112793
