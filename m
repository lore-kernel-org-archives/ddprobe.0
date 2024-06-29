Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6850E2FB6
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719627263; cv=none; b=Yi64q+mjhxvN92nOZKn9YAreJLQ5os4/C+Axf+FoXUsfiqrjCJLwLq8+SUGJOJFqswOvrsyJ5T+ALC0IuBbDn4bG18mXTz6GgXALE/PSoAAK8cxK1OBER+BZHv+pojbnPsA/5WHx8EuLuIbp/qPO8ZQoj5GogbRQ92mWtfkrxXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719627263; c=relaxed/simple;
	bh=2yKK1Nu++Dl1EBYVgx10bl9Hn+i41QNFs3g0/CIfklo=;
	h=To:Subject:From:Message-Id:Date; b=s9cLdZ2qCBS7P39DOaMzrXpFUwMnPaiBQS3D0Cki4UYDx94oWkLNqr2W+2ZR9o5AhdrevM+cLFlVldLwEwjIcSIilL6UJkq5oXcaaLEqdhuzs6//rqVNvYJN5yw6yQs3CimM75y3VdK0VRmxI5uwseSHVKba2nVx8KL07aXotmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mh5cDb46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mh5cDb46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB94FC116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719627263;
	bh=2yKK1Nu++Dl1EBYVgx10bl9Hn+i41QNFs3g0/CIfklo=;
	h=To:Subject:From:Date:From;
	b=Mh5cDb46uzAYmiLe6Pj/J8LR1nLstRe8w+IrOsvevrC2WQ8noFCBx/JbPnYf+X1XR
	 pLH35VMYyx5z3ANp2iI9fp+wJI+VsY16TtGs1aCqyxK53I/RB+PN/wNJDlW5LaLmlp
	 wr27S8eXS2IEoe2yzaHlsTHjO21SeOy0DpIyVViy4Nn7mYXk0L2NiJETID1NVoMDCk
	 XHX8FpoPZn5PqVP9QDtHXDF5t0dQCcNlLsnZfK7ZM0k69bxYZHY4KnSwvfNcZx2bFs
	 bkz2iWAOS8lkCLkM5tHWMRplHs1yDKLmFy8qEvEjDv3Pi0w8TS5iWlgvR5JxsQzjX6
	 ZS6qll2+TtTUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F32C3064D
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962726285.17374.5167314722809243551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e188d3d826630376aa27e098fae13edec9782b889c1bcd552cf249c316b0655
Date: Sat, 29 Jun 2024 02:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719627262
