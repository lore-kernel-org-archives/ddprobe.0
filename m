Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A091D7E42
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766825634; cv=none; b=Ihu0Zudnrk/817OmiYJGmoSD+btpCzvGim5yiizmGlOhg5fWwi/VZeKpJl2s47u6dl5i0sWp6pKQBBJwzYG/4B/Di0BOmrfTC3MlMXqvqhaQ8NWobRjKaWupACTOcfzS9bueu+UMfHGzr6c+QbBlC3CP9U+pcd8eyruRHroldUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766825634; c=relaxed/simple;
	bh=uxyUP1GIuVJIT1pN0X+fJnmEpla9W5wlNzLuc8nxUTI=;
	h=To:Subject:From:Message-Id:Date; b=WPXsvb+fRGhhlyHPeQeuUBWKqOqJP1sgEHDXlOqTDHXUHNY62r5KT9iSuiJi302f1lqUtZDTmjib9apLKWI1oQzNg5F60SpMo0AmmK3KIdhnice7akWCSNFsH1BOdJTZMVT/drJ2ytQU+WDF71DS/YNCXwlA+rG/+KMFMx3UuzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBKbIoSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBKbIoSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC288C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766825633;
	bh=uxyUP1GIuVJIT1pN0X+fJnmEpla9W5wlNzLuc8nxUTI=;
	h=To:Subject:From:Date:From;
	b=vBKbIoSEJ8nNUjHdcq01b0wF6hrN/VL5TnS0QrrgU71dBwNkLfAI14G+4gdYEwups
	 aRqbx04dzVG9gs3aIOnnyB3b4w26LBsAEVWEY4PQF4+wPsMPInL1IzpQw/z7tB84yv
	 1AMGLl3I8X+kmJI63Jkehy+A1dV0JRQTjRY/NqOcJk0JA7xC83MZxq2YQdJih8n2LX
	 qaNR2kPvggbhDg7r5PAYO/0xR0D8+E7bN2HmBkR/42NIOqMyHXP8/MhSIc2ylSV7pc
	 HCcLi9v+y7vxqxfv7XQM2yJV5EP7Q19hhXGUzF/XpaUtB6xH2B/+fkCKeF6BgoYrO3
	 HSnLqdnDv+wpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D35E8FDD5
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176682563359.25621.5845546019316266128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0255e46ba3763ad61520837a28b5a05107bd63398235d265d1796170dac8ae
Date: Sat, 27 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766825633
