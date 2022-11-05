Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0E8F1FBE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FAC8C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667676054;
	bh=3WqpqFfrDSEQ2pbRhVO1VFh/moaB9YtwHqNHYxDBfeU=;
	h=To:Subject:From:Date:From;
	b=HfsZu7+cddKNTcJsigIOv3X509ZhlIykVqUuFDoLraQER3RXzpsjUMCtkgDLRk7Lb
	 L7FdO18dvdX1G/F8tUHGNyyllU0wIbAfngRTFIorMpLqJIvUd2svVNFVI/8UsCzU9v
	 6hn5QgtkLD1ZnEuAUuyMAsVlP7bO77vpyJ+3hlN6FSn95GVH+DT+Tut+ZLNVt+2kym
	 +jw68rGUbyZATAh5kl9oZ40V/EJnMBncFZGxg6Y7UYM5X9WEJhJsLqbZP1IQ9CSJeT
	 5XjKgJ0Nbk5I28LfIIgLI77HgBNH6Rs8LGe0554H+urTLugZjfmbBzJVZVoNnBVhbi
	 Qmrs9iuVDnl3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FF6C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166767605433.10636.13173722051287809288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abad0818fbf32250eb473b693efed19493184426001c3ba3cbf648951c35ab85
Date: Sat, 05 Nov 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667676054
