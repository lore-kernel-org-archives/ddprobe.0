Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064C717B506
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757255994; cv=none; b=P36pade61QhCwGmKsCZGi1iNuq1hK3gpM3zSbXcbW2kugWTbHM/OR/q9rz9LES2Px3ZnS+Sy94jMOFYlMrCSXZuHDt7b1qVmcjmFTeuKHa7OLNYCWWYLyoTJNwLGtKUHqljKuEvJtpovkK+eigba7nOExWq8POi/t9z9cmkKG64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757255994; c=relaxed/simple;
	bh=+3Vq/BySWNS1bfKsZYHfZKDqyra6ssvYveZ5+70IJpw=;
	h=To:Subject:From:Message-Id:Date; b=lz8qOzV3AlcqpBqQcEDEo3ojGJdhB01M61TIHyTWXxEaDsERCRDUOc/P3Aw7hIddY8OCtSDmX3KtWcITXtUWD0hBv5i1WHZi8O1sJIzoQEXcNaFcFWnAhbBETdCCkkDI0ytZPE/uJEwHZZUmgdM4U2sFqXTmOnTZwHURdyjVUS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3c3n/jx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3c3n/jx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0485C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757255993;
	bh=+3Vq/BySWNS1bfKsZYHfZKDqyra6ssvYveZ5+70IJpw=;
	h=To:Subject:From:Date:From;
	b=j3c3n/jxXZjY2RvPUUU4ne4x/NENpSysH8peo2R6sIgKLXcbR+Esg1GHTcMLP2nbC
	 7ZdmT7C9D0r8Td1fAQkls9v4m5trywHFN4E4yW70glwlXfJsx0iEO5rYYBwS9ZOMyt
	 BkZDgx/pdzRS1MvA3dTDR4/QEMJE3VyZxk+LgjNwX1el7IPmrGhKJQkil2xbRt0xn+
	 TvMui3h+lkVXmRqi1p56AOx0NBw7hhTW0Re8u5lE+Iw/PucgLa/WErsgEc8wsJA7nl
	 B5/S3YXzUHV1wcszgGJeulv7D8tEt5ExjWH8g+tQTK8RuNetT9NwlsPhdcX7wyL5no
	 dD2P/1eMso9fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E5CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725599357.20360.5559182337547417793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd33f27b5415e44499ae138e069d980d3146aaf0887754cf14e70b58ed791b44
Date: Sun, 07 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757255993
