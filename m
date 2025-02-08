Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2A810F4
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738986354; cv=none; b=a7P87W+oNE9fAkslfTjP80kjuNV6/aWEHxRVrgXq12pmUsHjw55xtOzfjKGrcHk2OmFZCyWar2hbJygN5T6HGxpwTCbzwsTFOmTRtSuVY5TxRZdy57+TXv0VdCQlHMa3VasgsRpIhnmTVqtHR1j0iGgahumOzsocAohSPKmUttg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738986354; c=relaxed/simple;
	bh=bS8kCfixKra+Cdm0y0OOIj3e7PU2jegaX/Qjr80+aJ8=;
	h=To:Subject:From:Message-Id:Date; b=Tx56qM7EzeZhA/3b1ClXubtgskX9UmtCmh5fObGZShjWLSYIkKEeqyrfbDaGhk/O7tKkOIZ85d5qGKDWjOjwlnQRuS39d0OyMpYpoFMugszjiy9yNQm1U+JJ5VCD4inRGzuLoGGlPCWw0HTgvkQR2fTU1s1/nuIneXd/KQu0bBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+Wfs9TJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+Wfs9TJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE248C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738986353;
	bh=bS8kCfixKra+Cdm0y0OOIj3e7PU2jegaX/Qjr80+aJ8=;
	h=To:Subject:From:Date:From;
	b=Y+Wfs9TJsK42YX4avE1O5tU0P4hDIyqb8Px8icCVZvHon51q/onA6f+EKp6uetU0G
	 4u8nvcgYYJE97IWfm1LKl+73wyX9HDx+h0W0Nso7bsTFZQFPiM4fJ2fU2tmqfF8xuR
	 h6dxg9wgo6HNqZQioCCTj8ZsQK8smCSMlIUAzJwaITpApTuWGwzrXDpMzDcRqP00A9
	 0XPob5gJ2ilSbcpAg79PyO5Zh+fehuNXdcivaGgx6FI7S+UQ6rD5pp1IutI+tOfPi2
	 IehHSER/q6YHaeRM9tcePYmliiUW9uxk9Oj69pcM6Q55ugne9lxdNOHGI4pwcde6TR
	 d+2+1WU8s+Psw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAC9C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173898635362.21564.3969431501963921564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b82dd65f3078f1de4b61e6c65733314213eeada8dc3964aa5432b2aaed7573a
Date: Sat, 08 Feb 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738986353
