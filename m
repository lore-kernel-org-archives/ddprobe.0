Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4201A267
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764456774; cv=none; b=dmo47xeH7hYXDZH8tcBP9l5SmHa8cjFxXDmjl5SnOiR7Ua66mIzjSh+J3EvuRTZgHU9jcSXymlvgcXVQDF3Y+fb22vqq+xD4yulXWPdwLaTX7nb9Yz3uT+lzrhGGb+n8AmWJrGB5wq2fVfhhn8atsBwONA97GNIIoTPsDM6QnrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764456774; c=relaxed/simple;
	bh=Xc0IM25z6Fgv+YkAwp//YfSf+1bvWoRXyPJ2+QpP9PY=;
	h=To:Subject:From:Message-Id:Date; b=ObTXE3q3tB7tvwNfypl2DsHpS8eQPjnd8ek9sInjxulJ/KO76Vr4jBeWzysT1rwcOqc3pHxmRreKM+Eva9PmgKDPZuey5uIR9bMyEUpGmFCOI0IneXi2kK0yM+K3p+Y02BV1icr4LJqT/xYCM10/E5B9FDYRy3KLegrBSK+wKQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBR5FCV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBR5FCV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE8CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764456773;
	bh=Xc0IM25z6Fgv+YkAwp//YfSf+1bvWoRXyPJ2+QpP9PY=;
	h=To:Subject:From:Date:From;
	b=jBR5FCV/cwPVkCoUKip2qSZYqTKT7A+aZnmJnQit09yRnnX3keIG3vvAtQPkvSgz3
	 iuXQ63aODZbyJm0/jM8F13qmhWw5XqFdTbfq0K/0W/43TOQd3+rhKGkIUyiERraUPK
	 7jn9fKo+Q4o7h5s3u2JQPlexmLxMm4q3jFriSbFGnU7TCizGVgCPKJ/Xa3EKLMm5hf
	 zM2M4jZnfp0QuGkr6wrgSnEOs9GWtplkK0lyLkndzKZeGLzo16wDG4m4+6Ffb8noZF
	 Jt5ve6y0BvMaK3DKfg9IBjzrrr0JMsocgnCtBFSo/eX373qxrHMc+QX6qEye5yC+7a
	 RCOMreYVjMzhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99227CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445677358.20085.5089248678657751639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba423ff135109b2796057491b4bb90b69bb6a3ed2567ff631f9398fd6e700ff
Date: Sat, 29 Nov 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764456773
