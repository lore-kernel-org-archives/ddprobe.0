Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21A653B9
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FD9DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670874087;
	bh=5JC5p3gd2UpX0pL0R/K97u/vYanLEWDWity6O4vvJII=;
	h=To:Subject:From:Date:From;
	b=VCoTErB2UWGVxk5DpXyzZTnsXWaj7yyGMri5cvcx/7KhKB8zN/Peo/WUJ4v91gAIH
	 dMOE1HUTwgF3IP504dfBgPnDBGIKCtBwN+qJtiDLb9zin2I/4m3D+D96IbdIoJafyV
	 BPsYwt4UKbJfN5rJNE4DtEPmkz4dAMn9xQt3nc+eojjxkipEgZN7Tm49b4vFGeHBTH
	 am7NOFJm8AidUjvyIMU3aJWX6idkdp1ld+BQbaN3udx/0jHQw70Jhf3poLEHiCQhod
	 27UXf4Z2SXAH3mkSofcW8jmp5l22/Oe1wxYNTnjmOuH3Hn0C2RjJ6RPEBEztVYDoJX
	 dmuIimwOaF9nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60849C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167087408738.7920.8760456560628601531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08e665928b144b7dd88dac56730e8903e033fe09e2afc95cef7d27b6e3c55f40
Date: Mon, 12 Dec 2022 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670874087
