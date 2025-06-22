Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328C64409
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750622994; cv=none; b=hp1NmOjH8nUY+mhtT8ojDVu5/4IwTUbo6I7UdrZJeyu+rYlODEJShOUJHduPs2oTa/6N3KFnrDshSxUv1bnBlA+3I2bgKxLVw3p0HrbI8vr9vsBNe76UYX8kJ8m3R+Od14jt4c93mSzGt8aZksC3t8ZYEWXx7YbBMOCwsXgr1yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750622994; c=relaxed/simple;
	bh=diOxi4yJKEvj1gl+hFmsjAAJHNB93CPc4bL0hTvxNHs=;
	h=To:Subject:From:Message-Id:Date; b=dtEVGXgdoK2AHHYEs53klcuiyktFSjhVPrPNhJplUoqdXWZISvWZyYSw5PnyRQSB9uXhsVxzrA3YkwUue7v7VXCm7JUX/P+V+b2JECx8eW2bKE1/vtBdfGq8JnDZ6PZMLTUrA/kkpha2qe/fExD30xPMi9h8qehJwMLXka0rK3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9+ZjE3b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9+ZjE3b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53DDC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750622993;
	bh=diOxi4yJKEvj1gl+hFmsjAAJHNB93CPc4bL0hTvxNHs=;
	h=To:Subject:From:Date:From;
	b=m9+ZjE3bfN/iN2reOiHVL5CXszRUyBE2wHQ1t2vomHh+cGWukuY9OWRRCyrqtzs8+
	 6UNcLRGZPIYYI0ZtsMScZ4+5P3QTWItomcyFkXiVYNyOwGUreXo0x+cuzKZfPn6t2r
	 jpfP1vuOwJgkg+4KnW9jVuXLCdEoUnhCQ3CraVR3HSVLNcmv9T+qnKywZAslf4lMcK
	 +fajc40ekXvr0ewNyV/xMrHD3KjTvtBR+iRYhzCMFjG10vVgHTHUErzwnBTO7zh6f+
	 6fQ6iOaC8GK3m0JUveUceR5LTkHf3GzmL+AW6Ji4y5qG1aPNxu5NwSbNHn6Rkcf52c
	 cmRz4WJvO7XzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9104DC7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062299358.28872.15533268113400272527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49279a0a621ac77a11114fe568a552dfce38ced35016adc9315e3a631fd4ff8c
Date: Sun, 22 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750622993
