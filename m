Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C3D2E0C6
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 17:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FCBC433C0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 17:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686849548;
	bh=7b5H9JGK9I4VpBIuudE7Sq3igArJY5UCFWeqGYz4NOo=;
	h=To:Subject:From:Date:From;
	b=DfdU0H0gNpbpfVdCnZGQKkJPJyIljZW87I2f+mw+yaFytGokDvFQdkRtG5yhx/Zui
	 9025rSHgXmOYPzb+RiTXkQysBW8BL0+zy25iLskV2crhVGunCpR3tUeQ/lmrePAWcC
	 c4CNrTd97+nVW4uic9XznA8ZfpVC/Qr4YlkPer2obnaXyE/25h2OvQKvvdUXobUhW7
	 vI2rEEbkiHsuQ1WMw3NGa7kd7EZsnADXUPI/M42gFtk8xdhgWtGziEadbe+ZXWfKK4
	 6Pj4JBaFvVs5P9mdwmYUYIkZGz4qSxu6fv3nuedV+i1PeMrWEe/9YzjAnU0Q78sQqw
	 9BX78mcjJGk2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5A7EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 17:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168684954869.19540.13962413646323030089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34547445f190c243474d363e1c4d17de88ce9857fb66898ab231141948065ba5
Date: Thu, 15 Jun 2023 17:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686849548
