Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5899240EB88
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784928634; cv=none; b=hOd6+8AyZj0xXhNTA/yLIr1HL5DR21eWJYWgcG+yBypn2118bh9oe553FW3Ay370/DFPHvDFL7wS+aB38PSWB9aIXmNPanJlMSFXSCguBq81YNiSGkPlcxD5cUAOM3qs87048FH5wXGNOHDXJ2U2emALdDhfaqVxgUcIv0Xi1MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784928634; c=relaxed/simple;
	bh=FKPL+ssJP/9BLrfAWtyy2oe2NsVS333k4+jtX00zAZg=;
	h=To:Subject:From:Message-Id:Date; b=YYwKOo6u3wUhZYi9v+5GHQGD/ia/C6+izKU08XkMwI3OohKHcWoFnxLCv88ZfvGLdU0Hd/Db7+20CREEu9Yo1p9oe7PS1a29MRdY7Pc3FCfGYsqnkBi5XxVj7HndHYQw9y6s1dUqM/igJO02tWHIP8uZkomXxnUZyLQlI13LqJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1gZZOzD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1gZZOzD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB31FC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784928633;
	bh=FKPL+ssJP/9BLrfAWtyy2oe2NsVS333k4+jtX00zAZg=;
	h=To:Subject:From:Date:From;
	b=M1gZZOzDUp+OcMhN5P8I42YHxeUuriBaHszK8SnuhPh0QVNxTZDcCWMpQF0o5wbyr
	 2EPGgbnVjMxogR0Vifnqh/j2Z9raAhSoCbFIzS8MxZwoTny4zXJeKXFVD8njWzlAvL
	 7oVgRI8QDqP/i4dBpbH/tLDSqAlY24oB9/FLzOU806GmZ6n5n9k8KeWbkGR2/Enj9E
	 wJY73HG6czhrfxLbzYtrGQhpIaoX2W1rcJNQvPIvohjJ6yRM7oNZNQR+A00lvs6Ck3
	 FeVQmlSPn0qinxLEJSONLkRU3ZSZoZVcL9pGTCF1qY6WtQP5n0GnUaXzGL9wTuaGZ4
	 m0ZHh8H/ZwP2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98E9C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492863368.10374.16865623254801676364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095eea065ad4ecafce455fdf51316c99c6a22eb319f39dced09bcdbaa369b8dd
Date: Fri, 24 Jul 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784928633
