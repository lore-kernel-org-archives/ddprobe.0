Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477421C84D0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781434594; cv=none; b=arieNOCe8tXsWwnU2OciaSnFVBYhqDuAlgnIZlSECCV7FsPrqpuuMipafKSe5GlDyDnV8+cJKg+FpiilqYM2yTX+tzejocU+xHmme4m2BNrUYGOjC8FqgGOjj8htv629Uxzws/KmvlIu5K6m8AMzxyQnkKI9EdGqvRU5RCpicHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781434594; c=relaxed/simple;
	bh=ITezf2XbfGa19THx/GWkoMlw23y9o527XHvNwwqhNMg=;
	h=To:Subject:From:Message-Id:Date; b=kJ3fvGVE+M6MS5zhAYvdHAjwVAGVwWbOmRgdjDSgj6ruIC3tDyw4C3nYGS6KYBGLcEOAsyCqTqroc04vpUfwGKtqP/IjtPwa3Bjwxl1ceQOj1LEQfHQ7jkp73Adi/Z+kS17ZIZ7VyAb7f9OtSmCATIr6Nf5x647BXDGdgUf+bDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPMK9khD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPMK9khD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC4FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781434593;
	bh=ITezf2XbfGa19THx/GWkoMlw23y9o527XHvNwwqhNMg=;
	h=To:Subject:From:Date:From;
	b=MPMK9khDX9rUhiGzq6J7pzO9eRZqUwNa6aOoiJoo4z3FE7vXZSEBdvMajNSZ67Peh
	 Xl+/N1gxra8iYo5x31DQpIdy5L0zaVPkLjok7ESIIgXLst7jnlgScLZl3zTAutoId0
	 Ru67QPT0a28IGpgUmPybD/QRLoLKko/v1hj8GMcWUkN2O00SOMOQDYKcWRMzlzg3+w
	 TxY9GWWeFIgi4sm1hgz7qLo6x7j7dWAJF0/NL1ZY5i8cCyjq4ZemLI3K/Uuhf2nh0N
	 OeQUnu7Ll56KSqclMER2twVNyB+fo1q+/r6vV6YZ9s+NlNXlKrGjR3/lU8gE97nIa0
	 zXfmMa8fvmLsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6B6CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 10:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143459373.29210.7981531962861606977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2deed7128c5a0d3681d0557b631c64318f92e850843ad29d48460d5965229ce6
Date: Sun, 14 Jun 2026 10:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781434593
