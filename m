Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDB3156E2
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 12:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5775C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 12:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687264328;
	bh=MImb53yyXDeVW1xWVWLDNF6Zta0XTFHASw7qSR7c1JI=;
	h=To:Subject:From:Date:From;
	b=dbKE4HFAJNAOXjpA8BXXq+unVDHZ6HbZ8oYOHdHw0ygSWKWnfnZ4Sc/J86LRd4r4a
	 Ob8E0iuZUNmOSMA6XkGB/SguqeKN9jaDPYCBE6G1Q01CV9pB9ye88a1ms2yxB2r0w5
	 40NPT6c/alDqrtzT2A9bpwKrpadpsxtwD6ByDCeUmIf/inAMX/EUt9lGmX8o/k4sQ7
	 r/VRdwrcqwJxz1JmWWGxn98yy1ph5jZ0KMbmCbpyqWJUFJiRhXOl1w9xpCst+CMxKB
	 bzND7zi5mo4fA1GEs5WTt5XrLzqpNzOdBTAqJhXFmmSUZpMe0j80J94qFARSwxz/1h
	 GiEBoS1ImxRaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B74FDEB64D8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 12:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168726432873.30016.5327128401477731004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2983b14a101a36a37f7939f1b206fa40a9ff04578b974f9a009236b16e3181b
Date: Tue, 20 Jun 2023 12:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687264328
