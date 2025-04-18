Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA0FEEC8
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744987794; cv=none; b=FyEMTRCFhaB6h4B/iaCto/qRI571wrVN3MIX989h0Mwkydj8dT8xMe5516V3GXaAQ08adejBvx51LG5/tRg+lcqGs5105dO//LOkF+xohKS4nOEZeSC53fFAuP27pXHxi+AT5lVTO83xZcFItQHKtdIMxUYpeRomhxFV3znmUDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744987794; c=relaxed/simple;
	bh=nZITiIOSdfbk6Nm0/C44afkDVbIiZe+TnA7iq7gFxLo=;
	h=To:Subject:From:Message-Id:Date; b=pE0jKCUaue1r6yGd6GwdrGrMR8SaKm5ObMyKdRk/q5c/1PhHmAYAnVxCuuLEoTuVcVEotL9xjHqPZxkb3cA54ycijaxk0TBG3Jfg09eKChEIgHNpj5lxES9wzK+lI24epe5+u3yu6NJfM1YK0AL+pOFw65VM+fh6f2KIYUvtG0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvtEMkUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvtEMkUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC33AC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744987793;
	bh=nZITiIOSdfbk6Nm0/C44afkDVbIiZe+TnA7iq7gFxLo=;
	h=To:Subject:From:Date:From;
	b=JvtEMkUyCJKD5/GxB3BhVOPaCC32QFzrCtU+IUs0mlVGu4Iyv+XcpnU5g+9gvn1ii
	 iIgFUq+Hqp2GWc7Cj5Mi7CMfF85jdCxmnV1QR4EI2vlnWhOJxw2aXGKf94xzm/gD/F
	 WfrTOCF+rAq4EkJSjuvUEOkuBoVlhI3X+0JcqQnoqpO8ejEKuugVclTgMxEwqN7PA4
	 W9YCPy5uzaoBePKTeHA/rUAm5J3fdO2/6u5UvT1tCv6QsR3aPyYlNc/0bMLb4CxFWp
	 YbNsHZH4hv0DwdjqQJo9oQps+Zezn8Ody7E0VrA9OftBXD7YABYGOk/GFuT2hOXvy4
	 j8fm+jPUyt8ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973A3C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174498779361.26695.11873154639140299011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f708798bba61eab4da01fa309955427f5519fa08c1400da7131540eeb6a7787
Date: Fri, 18 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744987793
