Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73E75156DC
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 21:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E70C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 21:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688592428;
	bh=stdMmQ9Ls/pm4M2clQHG83dX3aJhPOytSFgYhzMjRUw=;
	h=To:Subject:From:Date:From;
	b=jHFaCzux2grbj9SvZfasZ2ATcYhN3R5hHueh8uG0/10vPR6xjGZ0Nn7qZZl94NMWs
	 baYIXYaHj6aK6IGrGNpANVNKO9BA5UnxvH75FRldDqZp9zLh9yOLITZqaRXxTwMv/l
	 Rc8gHgy9NPweiI2eW4ofNItU6ZIeIjQhHFx8p0mAIYaosQqMVwPzTNojufh8QR4HHU
	 QLzqDJxaxHmL/BqkuidxzFDzlmJpFr9fDH4BhvuxeznvrSYjokeFXMmRVIOuWH4dIq
	 2iYoHEt8sCKj9gp6jpKJqBeK22jipjgaJZ/APq/agJxnjSNVtJpvMigO+LjRh06y4o
	 b4rdK9dyTRXjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEB2EB64DD
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 21:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168859242869.30151.12404676814655721010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee657c3a48e73b61a303931b9ab8f60441347c0878a4723953b7f0cbec020ca9
Date: Wed, 05 Jul 2023 21:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688592428
