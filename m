Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2878C33EF
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779627154; cv=none; b=VRv74vhTLNSAlaJ3LrVhWNnkX2x7P68sVVUUAoMJ7qEW4moW6LbtQwQoqXHNkybnVD/KmBaNiTj9C3NK13NYLvxNP5jE0hVaUtDZqIr/y82vqYX2LZgGy+ciBM3hkf+RtTHF+NKRaqLF952PoOA/599bobSXy6q72i6zztqRHp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779627154; c=relaxed/simple;
	bh=SamdnVRtJWy8968mzz7Uucy3ZyVsW01aXA/eoUsNeOY=;
	h=To:Subject:From:Message-Id:Date; b=SP1X63M8wD/JHN1/U/HekAZOXxUSbQ6uJLzSaJ6LkI7oZVKlpIpv15VGLXv4aL5uekVJVKf322qLCcRPTnR6ElmcAJWzCzTRo/q+Jh0yUfbNxUfyK+dEvQEZ3u7NuYtM7u2NyMH8aQnihK6Cpn2Yrvh4xebec1qvZXsEtHjquH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfCiLZYf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfCiLZYf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9D2C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779627153;
	bh=SamdnVRtJWy8968mzz7Uucy3ZyVsW01aXA/eoUsNeOY=;
	h=To:Subject:From:Date:From;
	b=mfCiLZYfeRUeNWok18KLPoT3ZYxgi4q/0QGkeK0Sb483ZbXJPFSvaaBr/5gz49Zrg
	 OnOp8NI+31xFrTcRQ4olv44SKThtlu9xIKdW8T9sU/Bfr+fOKHJmBtqsSjFJ7m/3al
	 Ocl9sToSU2rd0hESn7NNTw/EwHkFisGgRLQX8pqGZB4CFl97em7Ia7z6wOGELYR0wj
	 M9fWh9kvSJysVpRK3/RF4lp9ReRKjj0sBk9WvI1K1NBWvL+YC6rhM7ylkw8cmOmV4b
	 n/iCRYZ7C842qb22eQOlsMh4pjLp97hty243oHZ7vklmKWFxLVDVcCfUsjGoJCkhzJ
	 3EXhlUWNrCqCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8077CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 12:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177962715368.23495.906260467496077236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af9a445ec305044f6ed18ff2ac1cb81cd1e04a204198239686f2ff54c9433ba
Date: Sun, 24 May 2026 12:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779627153
