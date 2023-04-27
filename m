Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3909123D5
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 17:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E0EC433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 17:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682616125;
	bh=o31lCaAMSxRuA7JxM2AdWqitoVuW7oLyeUvZbe4T4LU=;
	h=To:Subject:From:Date:From;
	b=CGezjn9JvlgoC0YURyf320sPshfoJIBHb89+EVzin5A2bjRFIyJ2U9vbNwM3FJO7i
	 1PCGPQXENUH5XVPEkyOjjrH/qG7mmo/pERVMhP3Q3N+XPXhMlJ5nNerLxZtrTzHRmC
	 33fmrPhC2lJRK2zef/Fh5J8gvWzIbw/+VjupVN+dWm30IXfoQROkFxL0urHdHJD653
	 cqVZOEiXzdlAzhP1CteAUrPIQONzDUHtKmMiFToDs7L1jD43KA1D8lfdyITc1aO9ON
	 mn7jVZUrNFnRlVZfuvhqMvLEBen6GgkUs/cPYWI+uzhRoexi58+2XHQVnWg4gYFn9D
	 lzy0IYJC81aHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCFAFC77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 17:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168261612581.27610.1742585360849182103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb9015939c06bdee9e102994e4d748d8408ab9bce0a0baffc0d148399f7a327
Date: Thu, 27 Apr 2023 17:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682616125
