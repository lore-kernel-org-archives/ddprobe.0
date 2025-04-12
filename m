Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D11B2367D9
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744421994; cv=none; b=WhSM6jhHMa9TzffszvGn4ZC9U9DPa9kkc/VOeU4vs0Ejzjchr2jiKt9Eq/kmyGmI86w000at66XAjoDWfa+tGLBqhpw9CYZ5S9nAsh/MM/4e3s5/aluGeu/LfTHgHLn4jVQDdZJ9yvuzKLseTBOT/+UvGPL4vNyELeK/behMFGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744421994; c=relaxed/simple;
	bh=J0yykUwiZGs/5NVcfbgArsugUEBC0RIYiJKg0wZioXc=;
	h=To:Subject:From:Message-Id:Date; b=Y7s4sWN5xFcUAPM63VvsoqSaZacnsMz8U/x3guw/W4lSkEw0Q0gO7c+p5TRR96cmmdyEMkHOdLkF8Xaz+Y7a02S/6LTUJUmK5F9cjavsCi3kU19PQJyOW+vhNyQ8430LNTLQTZAFzE+Wo731pKyGRpiUayWwSZlKVZjo35jJmYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqiaVVq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqiaVVq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27DEC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744421993;
	bh=J0yykUwiZGs/5NVcfbgArsugUEBC0RIYiJKg0wZioXc=;
	h=To:Subject:From:Date:From;
	b=mqiaVVq297WHyMAIQ58duCobwZWZOuEwxH/PpXNDjskRTbRay930XW+VWhVw9PesM
	 +zGaK6IjuRLUErsxmR+5WiiAv7HlZnvDA8g2EYwUWPdG6ewOmImDt6xeMK2Zg5/l6+
	 LbcsIYEOl/vDxGkZTYng0gJVCWgVSVjBWEhnpZM0b8eArvIJTANw6muUa7/GyhXzHA
	 Q4+Mq2j/vp5xvh4eR9nUF/ldLJsc0qGEVDtk8F3tCKyEc1Z2QqR25jRUbPDSxyWCEV
	 EbugZ9Tuf6Oob6Ekn2fV3VQa9na6tRaI7XDmraLqLo45NrQ+YN9azVqQlwmYOOSslb
	 F8YSWYsxkOKLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9E7C369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442199359.14235.8085559727576711339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06937555a5335eb565ff98c399d5e36d223d2c360ae2bfaca2cceeef79eb6d28
Date: Sat, 12 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744421993
