Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2326FD7
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D7F2C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669910454;
	bh=6FMhCZUcPVafHFxw3BDNv8+jpZNnLGQTDyivtmeiV7c=;
	h=To:Subject:From:Date:From;
	b=jW0JyUQJNErtQqvvo0qMIwXBP+/PkRNUwdaShML/1jMhYIJiKZHOY28v8rx/E0SmD
	 YfMi8I339KMEVWiv6BvF/00YlD9qChe8b3Y2AnOjQPzAIGHKmup58tOjGlTsKfuwTQ
	 sLmMnz/KSJBnTCG+GvwtoB7iiwb3mVI7BG2ER0IeIQaGIhhaq1EmQD/IfcpWLC4yax
	 DhRPYe1mUTdZyPKC+pDh+IUnlgrzFUr3e0UfdmqclTC5cuiqtFds8Puy4r67k/zQtN
	 xe3FEdj+4fRkBb+3qEggKGM8qD4tbcGnvNGXOSU2TJ5vKVrtwdSs/CdXIqErCSmps6
	 W9/dTQoD8y0uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 558A6C4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166991045434.3387.1294906413452364611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55809bc5b6d36350ee706f099df91d1cc9077a335585e46ae2cafbf8e4a2f8ab
Date: Thu, 01 Dec 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669910454
