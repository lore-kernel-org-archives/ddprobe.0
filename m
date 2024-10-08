Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8E214A82
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728428154; cv=none; b=Wcb6R9rvQF4b582Z3a42ulxvf46sMcLDCGJ4YrE4Lx1f/gzhu++R94sZRhXsFBDXwTMM5o5SNkwu+b/D5KE/hWU2KjX77cu+lGj+XTb+oQn007iy1TMTD3TY0lrPwy8HZKVeuhP6oTiMrxkVwzsGc3wBv/nV2esExhVjowxjKJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728428154; c=relaxed/simple;
	bh=COu1QbLkW1ceaUxJgYaI48S3ZmjMVUwQ9/bW8VOneW0=;
	h=To:Subject:From:Message-Id:Date; b=g4q7dX1+GxluxjtilTmQnjdxmSN+rY8SevDcKRP87WpFaDcRHVJqd+CyUdMJ0xo+/vxK9t2s3egjJ94/OnUoY04jP7lHAm/gEUHqCpQxvK6lAB2fWKBNTVqU3PFO/vgVLIQmJ/CPH5t+STfmWejz8f7a3jzrV1c/ZZYVvKKGIto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HOze+X62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HOze+X62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC299C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728428153;
	bh=COu1QbLkW1ceaUxJgYaI48S3ZmjMVUwQ9/bW8VOneW0=;
	h=To:Subject:From:Date:From;
	b=HOze+X621ltWEPBZ8Ay9wQl5LxQtK2QvR57jgIqDxDSU0iK5Oi+0jEZt5x46swqBK
	 MDS8HuhURDpKU4ZoPUX0v0aFAveD9Jx4zcbHIPl6j/8MDuHOfLYaTyYsPSeFtM3T4J
	 XC315ekmsYWAOWCSiPJsK/c/2kYvJ9Paz/kW4vYuJqZriLUXx7S/EgM1MP2CMLmdI+
	 N5hTtYZ9MWf7S5Yy3MtdF+jeqWPMwKz8nimECcRkgcevbcJ6V5GPNvlCoIzT7YZgfl
	 wSWtjYBAv6TbQcyLQ3lmNgwApSblq5mDW727bhOtgW/+usvDRRCahwmMLDHzQ/JRBK
	 B4yZ9vbx/NOCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB74CF042A
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172842815363.22233.3731635652073828850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c26bbc79f346edc18b010364eb187e6815a176b7f44fa56ab7522ddf1bfd2ced
Date: Tue, 08 Oct 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728428153
