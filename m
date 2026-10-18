Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FFF32DD5F6
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792337434; cv=none; b=BKdaW+RSdkhpSdLz7lqkWPz0l70aZ0KgPAFV9DgLRwvQJExCzO30XThDFbGPiiQjQR0WpC/sqnd+92ZQLrG2DVD3c5qwYVOlM/RIANt9/QHURrfZotLd3V9qRRNuxtt8c+haDOd04z1GFyTq/xf6bA9qFEMtyH8YGBiJmMy27Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792337434; c=relaxed/simple;
	bh=4EbDDt0K8aLQyqZ0zDlsj0yUiUWSZ+lGpJ/n+ab5Y9o=;
	h=To:Subject:From:Message-Id:Date; b=Dwik8c3J9QU0ObcNZjyGu8MB/CtV07F21nCcaG9K2szxk8khUyHRpnV4lUCwykXdqskhskUVNSkRNoj/RiXKAhcY7rp2lEidTdW0rxrSnu+ONHzQ9Uj0uXDZPBarDQvQ+eZv9nxeUF8IvWV9+8vLzu1D6lrNXzV7fiMMQTnmWPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9OzPrxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9OzPrxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6C2C2BCFD
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792337433;
	bh=4EbDDt0K8aLQyqZ0zDlsj0yUiUWSZ+lGpJ/n+ab5Y9o=;
	h=To:Subject:From:Date:From;
	b=U9OzPrxmxwrlixrvbLtzXgqFd8EwoOKUIu9nzB6qZ7lQoY2K3lru4PLH577zHozDt
	 iBT2fz7RoHpg4opBokMkeE4HQKMxAfTTHU4sC8C5QRVJfCtFBIZgwIkM3wYsLjvw9m
	 /YgDD4DdhnGAgOMp8LVlBHg2X12AXsj21kz0Hyo9R7b//lbq/fhzDGDa5K16noLr+O
	 n9RgOQuM7fXE1viTDcvkp4Z6mSTUOnAzpEfZSCZtEHCceixn00ZQhzdZpnib6XGvve
	 cX68ralfd/6R5v/En7sfgPULfviRF7QcZUUxsmx3dxfe7UC4MF50jK6HpwBy5pDswO
	 Vl700ihPkGOew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FC2CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233743368.7482.12662252971029431165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5fe413b82c44147ecc469a215866e84dc423f41195db5ef6f6119d0f016d36
Date: Sun, 18 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792337433
