Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4725E211C
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 11:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE797C433EF
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 11:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684322586;
	bh=PhrcThBnVo8kX/MLYooBVNOPYtwSaLL1Utzxx4MJFOk=;
	h=To:Subject:From:Date:From;
	b=ac3jRAdqfgKho44zQBQnAyCdJ2ExGT8SEAvbx7zoj4v4avTkQ1Q6xUYdpZdOkwuDy
	 BXkZnwCCiDS+KijqhRvfk052g1hbr5qlIkErFcMbDj2gge1kAG9QKuZZ99kT80aHQX
	 W+ecDeUf8GBgPWY2xG4GIQat/tvdGVk0jDnbVsaLj5mbfCuCTJaTn8r9Jliej2G/08
	 qtUbJRGl4ZpPgxOLZrx72t2G/L9gcS2hQMZMF/wO9qGGZypQ3/IF+DW2ZzXf3NhMfO
	 dAk0WNltt1Ob1/OqtRH9kubdb0zOpkBmSeFEajNiLK9HPa90dUmtTREUltHhhkGgGO
	 JpUdT7szbhHQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC0ABC77B7A
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 11:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168432258580.22188.5820894750342501556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b78f820a7d3504a6882a164637f0458184e62b175661ba1efc44b3632949149f
Date: Wed, 17 May 2023 11:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684322585
