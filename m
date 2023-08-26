Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64228A53
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 21:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24A3C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 21:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693084448;
	bh=un8qucr5kTrYFHgudaF28FgAhpu3LU8y/WvBhU4RSfQ=;
	h=To:Subject:From:Date:From;
	b=PVVqvY2e++lGKRh21z/DA1NggZUINaW++qD+WtEGh0d4BwyHrjH6KyO1GJSMYblP/
	 k9tFiXV+h0l6vPrklaIj3Kvy7UPVzSZyC5pPYAioeutz0goMK9lwyqz3UXW4wGSB88
	 p3OBnTBX6GJ9GG6/FDx9AvI4REKAtLIY3bQz0RGWdczRAhiMTB7tSzYDz9bwrLOCmu
	 Cqv77IppVoCnGU9TLEBemOwBHa7qbDJXOyJAauG3WHyl5rjUzgQ4XfkE+eWNx6khXR
	 bVl96mTtsDmAxL5KD/VpNUjid5gVlD/rA7XgBheetW4OnxymSW5K2ZkdkFv2yqngD8
	 6HifJvqDe9dNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4167C83F11
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 21:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169308444866.26499.667687298199158696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f6ab4fdc61b192b8779eef4e0bba2ba64328efffc6cc8c3dd45a3cadce2de9
Date: Sat, 26 Aug 2023 21:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693084448
