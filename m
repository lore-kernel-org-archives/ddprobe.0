Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 125774C6C
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753681794; cv=none; b=RE/Vw8rOaT2yE03Mw6HjYa3TFKmNupzVq0kLfbQiALmosBHbFdmlLxDxHdXbKn+yaceTcDtqZUZB4IL1bTCLhWAxThX5iZS1N0vWNZGaulqiuYPGG+gOrt8mDa3XHWvv4rrX88m0CYOC8H3cQIt2e8nbWoeU0aPjlbkgQZMRDQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753681794; c=relaxed/simple;
	bh=/orV/jR0CAEu50tUdp4OJvicL8x9aDu2BZGl0MWDVuw=;
	h=To:Subject:From:Message-Id:Date; b=jodDWpd+2YM6sJ9KBFgrXmQ7Iv2VcRJ04x6Qn68fK4OUoI/dIS/b9agPpyzsb04Art6VKzQzTijr1kG+EdJMttCWydZVxFWHRJG7t2yDQvtj0esgwREcQxAU62ooltx9EwGGMZxJwso4CuA+FzhlAgzKk2OkU/+6qodVtZiHfzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9o9URRt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9o9URRt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F05C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753681793;
	bh=/orV/jR0CAEu50tUdp4OJvicL8x9aDu2BZGl0MWDVuw=;
	h=To:Subject:From:Date:From;
	b=K9o9URRtJ83VqRjQdJVAFJ2VPYsSnRnNCpsXLUWXcVI5a7mdhRnkDM4cXOZEw8tb0
	 upD1oNkapyHPIwW8zA/qQ6d5ioHkzBGvjiRzBL5sZJ0cu9Dk9Gne4wIMIZrTUTfCMV
	 R+f4/9f1F2ypDOcaZaN/lz4zJMYHLRcXZJYlHXD2lpLcPOkw/3ukBU9NfZvfBYa2jU
	 yIjNVefmiExiJEyzwmgpoPyKVjhT1XGIiKJtpObDTRivHYZZ133Ww1QYFVLNpA3XLT
	 nfcejRf07DDDLfC7JFktvLWdMEusxlEk1Gt8iUCJ3cOqYZvyDD+0vhwPPnLFhugaKL
	 gKsgBclHB1QeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F11C83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368179358.14104.10432085690951793932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb53aadc07c13ae32df4ec65dd711de2fe07a86ff55c045a421268e3f365a7a5
Date: Mon, 28 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753681793
