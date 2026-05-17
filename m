Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2659A1DFDE
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778990434; cv=none; b=uVVa9o7FbO775FpmqIcxxsi2Gy0m+ybsyjIzFT6TBmQlLXmyevTeO7tn7+JaLdLOZqSDxgo3QkLtOGCpDxW1XioRX3MisLW8WX6tqXnewO1OiCoZqsuCkPEPUUXaeUTWOD3Veiwd5RGhJxxFLF1G/2mLfJVHbUtdozBuTGHQD2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778990434; c=relaxed/simple;
	bh=4Ql/DiCsIzJBqPM9M7Tdl0zt3Z8IgWc2R6QEJ0TKUrs=;
	h=To:Subject:From:Message-Id:Date; b=NFAl25dYRlBrwlO46UeM0C485eApS93OyPOSVVS4sTE5l5i9BRvSUScndncaF58cxfppwmKlcrGYN9q8D+GSHs745D1ZmHs8PjLt3hb5mmeZjE+LK2WkEONtqJvVMULLxX8X5foO4UfAoGqKDmfqOhPPijlEz0GTddiP8hjmqbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=abmZaiYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="abmZaiYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0DEBC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778990433;
	bh=4Ql/DiCsIzJBqPM9M7Tdl0zt3Z8IgWc2R6QEJ0TKUrs=;
	h=To:Subject:From:Date:From;
	b=abmZaiYbmij4XmEIV1e1cVD3UboFg8+z58oab+oMBJnTOSDNIUeyI5/1dCkfW/MJz
	 LwkqWEpAFGomiSadk+mEC55XefIShnG/Wx3lk6sXNmre7FlJkHy8JolvA52rwF5lMQ
	 vCsNLudgyOQYN4agzXtfBC1sECknbEJ5VOM1XIlpqRmc4KAbH69U1ayED5M04bFToD
	 NIajv9db9WbFNNQzEEl3wTo0vK20jJHvlbVvzsttu9KFBL1sO6BoXVKbXX/QW+9kJN
	 TPWuL3FQZ6/PU4Yptmr3rKXikfzEI5MpW25eeMkHJAezOIbZXyExPwZpRq4bj1juXM
	 OHDXDR/DJgvuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE313CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177899043368.26250.10868982098937173994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3cb78b827cd8b5e8bf26950f4f8ddbb91f5bc313c03f3a278d4f86ec0f50128
Date: Sun, 17 May 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778990433
