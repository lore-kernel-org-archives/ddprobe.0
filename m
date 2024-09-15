Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F8C01EB31
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 14:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726410954; cv=none; b=ZfoZ+p9wp6CwLi/f8d0vXcisimQMkZHHws3xnZAli0bWSDyL6JdIdb7OVdkaQAWan7Batu7RA3oIyQM8WKDAv0nQw/66db8Dc6dSGGZK2zfg21UwdOlUacx6BNA+Jw3mShW3WKEkAhcvT1Tm+KvfAN96vKcriGoN40cwT1AdV+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726410954; c=relaxed/simple;
	bh=vRLGLTaR6gyITNpQPHUQ3bX0/zCiDWqyoT9pr+pQ0+0=;
	h=To:Subject:From:Message-Id:Date; b=kxT3qdmj4cb0dN+/nZSP65uIWw6ZHYIXawK9pFkR9j9XPF1GkMMht/rlaCDKt3GpPkgPw5Lvw6V+6CRMH99LEa5sBMHSWX4H8Fbqj4Hn8YmwsfYBmPem4omZ/RnuxDwAHOSJ0U8FlczjuroZEboQkw5+9N/6QZ0soeOGxBcwUe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYS/3ihI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WYS/3ihI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E06C2C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726410953;
	bh=vRLGLTaR6gyITNpQPHUQ3bX0/zCiDWqyoT9pr+pQ0+0=;
	h=To:Subject:From:Date:From;
	b=WYS/3ihI2c3lf7CAMUOQMOyBxky0JL3BSDLztrHfiUZJmvSYFBdwrmDKc0UiVForM
	 iEuriynNF75L8pOrgDxUdO+0ouPg8qtpKz2AevQyQppkWlMzN9Bvo4NDntJXOHcxej
	 cHspYHTo+7qcSjQEfaG5C/UxWQNozDGyFM6T2HH3sg9WmfZbBZYPTNM0/DQ+xJWFzW
	 ziF/X++TlMfAe0bBrS51JcY/ZwUMUk+yy8reac0uCylTcq4/J+DebZuF4JqccHYTJF
	 hjF64qKvuigqFO1beyiR/PJgVgt0bFF7U1e+EoDluMbeQIvilpYiWsaXZkoNCgtsLO
	 5QR7qA/VMWh8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA9BC3ABA1
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172641095377.8902.14401489236423034260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a316c11f94165971f82b303f6a39a773152bb88018087d475347dfddaade959a
Date: Sun, 15 Sep 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726410953
