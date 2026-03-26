Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF6E22D78A
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774491894; cv=none; b=YbVWr/lXCKm5W01RJgYu4t6EiE+aGfJeWKJy9i9RiWkZEhPNQCL8ceX3dkWZj9bXgDYo6/T8NZlpJa3whDGIOhyk4cc7Hi94dQsOw0zLzkziDn+uUrY6GHGU8Ak0Ygjj3boNLp4S6qmVJPhI9q2Iw7dCG97j2JzYRkJxrwO+mok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774491894; c=relaxed/simple;
	bh=T8AfsLDjJNePAMcC15ciz5JfgiPYTZXX3aEuDMRt+9g=;
	h=To:Subject:From:Message-Id:Date; b=L4t9749g2mLFp773cwWk0rHrl8y81N+VcM7YjxTlYDkijbVUN8UnHagbZrTC2jR2qoRq5VjEFaDeUncYZoyYZiGGldRIWgkDLL8+ScPfli/g8iIfFVVZPlYNGkztBCw3/YYsQ5SJVofMrYKLM/MKBTMBMOmd3O5J4mDsYLAaVAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhLruf6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhLruf6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A77C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774491893;
	bh=T8AfsLDjJNePAMcC15ciz5JfgiPYTZXX3aEuDMRt+9g=;
	h=To:Subject:From:Date:From;
	b=QhLruf6umz1NE+4BKZPbi6CcMwzwaYMWt35MF2g68UkAldtbZ867YvuWMvrNYbzFl
	 xJioaCQV6t+Sqpd0Sb/EMfmPvm/B/ZiUnoTk6BtHjZBtPMLNauTQZ0Dh6WvfDZje2F
	 X7jgE5cMFlU4bkbCH+OCBbzwnC+dsa2v21az3cSzTUU8fI5a++JSjI0e7dVga0H7wW
	 vNDAwPB2342MtO7oE2xdWux/5t+lTWSK1LOlHIecxB0PvBM10dpZ/kYbGmsPS3FbFN
	 absuDSKDeAQSilU88CV5/S/lYCy1kj/x7m2kN+eF8DHPr7TpX9CG2q8BVSIwP2iW26
	 h/clyROh+n6BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9714F109E53D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449189358.16014.14306050895686003714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1a9e2bbbd8c3e4acce07153db00e2e0e56a715e3978e0b1e5779844d041daf
Date: Thu, 26 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774491893
