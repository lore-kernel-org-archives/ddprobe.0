Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D29E3FC7
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759742394; cv=none; b=Ozm1XJawYmKEZLTixDoCCaLwwxBawOJX24aVJpMmhAFKsvd+Sdru0C/3t6kwKgkOzY3gAu45XioPTR2NvElHXinoTJB4sBEF0twgvo+ptELlkz+XgLyGj7IT5bcQB5W995d3+42lbfa9uXXcvuzCV2ZcB8H55A6+OCpl28cImMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759742394; c=relaxed/simple;
	bh=jNz7bxpPBH/5/hUL5f6eeGzSTivhwi2T5I+JfJcrtT4=;
	h=To:Subject:From:Message-Id:Date; b=B0CbXKNPr9kBl6OV9uqrqG6N6G8+FIJ6IYbYsYqrke2bB1P+DzM100wD1UCu/0awkltgi047mKe7c/t6rqcgfB+Yk34ohvJjUA6xenMnnMD9zLEJHBO/0oQ8CBA9ZDiGTT9ImNJXJpy2bgQrCEx50FqpTS5p8gqi/xhnP+fnBxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmtvcjDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmtvcjDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED13C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759742393;
	bh=jNz7bxpPBH/5/hUL5f6eeGzSTivhwi2T5I+JfJcrtT4=;
	h=To:Subject:From:Date:From;
	b=HmtvcjDvqKiHgr9BRYZjOXs0e0BYmDmVyF3LzeGOnPwJB1CXFj8bMaYkYNjTZ5dpE
	 YeUd3hg/EfnSkl0YCkpXOX8hIxpO9tfyyWrkwuZRaMo6rbW7O4wkOLuva9p4fhmueg
	 VFHlyy0184kI3P4osHvFTn3SfwW8x2aSrt//CTg/d+ywEDJ76opCDXMHy8X+YXe70+
	 wjl6Awkh4PvYob93+wMOXl75wOB6Lx27vsXomSS9N0Sg7qBpIzYcOCpfs2A9xIfBQf
	 0tc8XyiE92C+5k8oNmEUH9pUqpywdIdOJLBDND+wgq4WZFpMUjHBwuVWBdjQsHy7XA
	 ILxMqtefUVDDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22BCAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974239357.24695.7785358215768698643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46fca91d30785b807623690e5aff0f0396644fa5c542eb96a9fd21bb21edc480
Date: Mon, 06 Oct 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759742393
