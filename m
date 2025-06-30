Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2905C8CE
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751248794; cv=none; b=b7pWryU5m8NG8Xl4K9IzjGBGwwTsxw/qaDnNbaVwyfvxOr5UV9EA3Zhdwp+4GVLm9vKAIfXkvEKxxmM4/8eo12sIJbmgCWfBu2+YYY471u8rK7yOXSrJa9bJ8nqheXLonGvN/5Wh1oFCxbkJKB2wB1PraUhrnLvgeeAxK+jecZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751248794; c=relaxed/simple;
	bh=gLrBLqJlJ1gbhAZgnvnfhVgVohnrl2mj41Gp+JgUDLs=;
	h=To:Subject:From:Message-Id:Date; b=lfrOf2Q3/5IdD36ea4wWmwNztWRz7HHnu28lnhY9zqcaTqtRwpQ8yJ4eAmRMkhO2qmZybj7nNlBhEF/EEycgfq8HIIhpNGWU87tiy3ycYiSolv5eyGAE6eIcRSUNQk3r6i6RZ2YWbIA2/ndJ+nno9DBr0KfGI1TleX9A+BNZKD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsP4DZKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsP4DZKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F22DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751248793;
	bh=gLrBLqJlJ1gbhAZgnvnfhVgVohnrl2mj41Gp+JgUDLs=;
	h=To:Subject:From:Date:From;
	b=MsP4DZKVxbKpdAJ48H9DIU0Z9zu5LIE3BoddjTL+fPAX3vuWm2j1SOrCfR0VkCxf0
	 yfxpUIl+q/bofOxpS4RfVvwq256MwMhszXt9OKVjo3+AmMu3CXOsQWmKcCT+EnNmHT
	 tdqBzmq15wdj32C85LdSR7W9obKwU5kWdrXJLqXd0TjYQYUuqlAuA7wpQqz5F67Uy6
	 IwjdwIRsYhhB5mIet2RCICrvVXcjqVBiILxpC0rCOtDUgZ9o1+h3PVfsWDYU82nsai
	 OIG0/91IhT4QCNxLqj660uULHLkI4WZZ8Vzthg/pEHKYIB7VhBb0/Pjo5khtawWMkc
	 8PY4zNXt4gzlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D7C8C83013
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124879357.25620.16597572339108997548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4080158ef475a2d65368cc35ec0d44b1680838782fbf40b2ad050fd88e91d9
Date: Mon, 30 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751248793
