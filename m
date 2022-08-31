Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1AE3804
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7003DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661944253;
	bh=VEWpb/hwL6nODg2ISMLH3gIVZBh5gAaIpDcMXdE5etU=;
	h=To:Subject:From:Date:From;
	b=BZOsGLCqn9qX/dwoQ859kRCkEW+JUQ/bTuYTiLH6v5zQQXTKqwyz7gjBy8U+PUNPC
	 vtMYq+nkRWlE2JJNhHjS0lJdAMn3JYyvMcR7s0e7oUItW5zc1HDFQXWzvMwh7Necs9
	 C0tZpbhWbqDRTEE6YjqF3fnHQDmKPL77eTKh/zjXfjEfZVzd5m+COQZ6M23G+qvpKK
	 0yeGDIucivl73Ie4QDTdbjNMZs0S36YhBX5vjI4DSfoikdq5vyza3Hktlmb9bj3xS7
	 Cmu4YB4Pe1dervPeSHJao6BE9r7hVwMj6otvp8hXUpKL6yBtQE1x64E+A2wkCyCxu+
	 UZZK15O5exTRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5653BECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166194425334.7938.6198729210803695518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2664916deaef2a85dbdf3d0a29f73d74dbb33b79a627a90db2c462fed479d4d2
Date: Wed, 31 Aug 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661944253
