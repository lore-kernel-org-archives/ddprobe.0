Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B28A14AB7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 09:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5914C433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 09:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693300448;
	bh=woGK9djoWaIbvXMYt0gj1l8tvjwnBu+3qqC2rkxy8Cg=;
	h=To:Subject:From:Date:From;
	b=idf8ppnpfn5D5zDTH0dZUq0toUKeiQqgzrbrU1jdL+ipRi4l3dkEMkP6zHWj3nzTE
	 mU0SHDJQSdhEo+ZygmQB5vyEYw1zd3bRq99x9Fc3wua91ucGgv0SxOU+N9YcOmQyqP
	 +nWKE6QidBYINOMKiMmmVzG2Ic7RY51NM26HmzDO7nTYqCjRI7yLSsDDifBgp3RVbS
	 rKHNK86ZtTXD7lm1QoX+U2BMDHFYYDT9aJQ7okl5bR6B/RV2qkqnY8pL73lZ4vuHfy
	 Wqcefsgn+4yctZrE0bOH6nZy0bg70JYmU1232AUZQ9F4ssu0uPXn3epJbYErmn7iVd
	 hsv/EdQnxruaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B028FC83F14
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 09:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169330044870.14485.16788025736602305764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 834575ab59f95f74a5204043a965477f4c3526475f082350be22e61599bf2768
Date: Tue, 29 Aug 2023 09:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693300448
