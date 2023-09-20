Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B095156D0
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 10:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03A1C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 10:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695205508;
	bh=z7z5BJ8cbttKMnqoqLAuBg0rUxG2F6hpV8MSSXv9/lQ=;
	h=To:Subject:From:Date:From;
	b=ptzp/c2EigPhNxw8aiqUk8s7ajzKJ1NdJmhIpB8H9z7vRPzb5acGbDDWaM5NZgp7C
	 21jE7g/4S0eYKyCS5eN/NpjFBEnQ9qBi3jHxOZor/QAgNG/Uh0lpVAA4GemuLb2gDD
	 dxYihLkAwoIig8pDZoQlfZHWZtxmfVy0HiWIgFvjUQCXq2BXYr4bGzLXjtpUwJhCJi
	 wgUehrRYpkCA4lE9L1sjzQsSeO4daw7aD7X4zSjaON3altLk2aJJwwsjvl9JmeBo/r
	 hL2/jfZcmFdOXO7x1OSke2zJy8bEUyiWPQdG9wchO/ykOjo6GoKWPG/yhOMIz5Fp4g
	 dWCZyeLU2fbyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EE2CE79B9
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 10:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169520550867.30362.854735693793330069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4e29726af0ab069fdce2e6ef43d2754959514b4c3c9382932899cd117d5a8cc
Date: Wed, 20 Sep 2023 10:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695205508
