Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD01E32BF4B
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766391834; cv=none; b=EmVgPWX9dZCGf/oUvd3LkFYu+fmK0H8Hd5wJJ8sFmY3d55ePYPgNh88eJcSuXUF2eBCDuSDFdOMyo7oSIRX77hxp88gNNKgqVR0eAHtxC/D3/3V63WXTbS3CZjSZJ7dICqDCVXPuhqjezYaqxGCT9JKR/DIDYZElLpjbIP1DAfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766391834; c=relaxed/simple;
	bh=AyaNhV1rndszCo+GgP7bEZq7M8VEP9h+4ClxRvSxwQo=;
	h=To:Subject:From:Message-Id:Date; b=Fr1yDr0KiPwGfdKbjckc9lrWCmS4x4yrdiw/ng+QWWUKecpdyEPPHHHEnrKMxfRDWVryjRIERqcps4zTEXUKLCdM4pFFLjfaCbS7AiQ6Wh7XQu5iILGecTrw9TfpsLy8uR4N1rJEUgKMUhAix4X66FG17ML7vmOBPsRLlEaC+lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXlfH+bh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXlfH+bh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EE92C116D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766391834;
	bh=AyaNhV1rndszCo+GgP7bEZq7M8VEP9h+4ClxRvSxwQo=;
	h=To:Subject:From:Date:From;
	b=LXlfH+bh4J4/DmYs3/YlldfqSj+lDH1JnW+BxCuYMInEVKvfvpF0cxvriq3vmj9Z7
	 zqbMuJJWKgg85eKDrFA8gEJ4jvn+yNCsvWZls/cQAbdnYhgS4pHr0rz+cIZ84toFQ7
	 zKV5U38iWPIl53elxDPAcBF+SfLGe63cptnDV7PPm9pRvgzEkdLhKNbJNvjhWlYYIK
	 LuB+OqHDDw7+7MLMd8Gmjpiz2/FGP+2zkWCZcR7aGEtOx13zS8oReKTgUecOdb6TeR
	 CFhPM3IFCpRyNC5kavB42n/t8llacmpOGYEnLkb9sPv0sCvJuI0WCNlo5sy0jT2AHx
	 B5jGroqD36M3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4FA0E6749F
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176639183382.15417.10603719369328566430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 587220906ceee9195f63beb955df143627cf283e5d826df3b60472d6663a01f1
Date: Mon, 22 Dec 2025 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766391833
