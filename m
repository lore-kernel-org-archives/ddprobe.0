Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6269A17C9
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 08:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E76C433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 08:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691482388;
	bh=UbxnAh0XX+OvqR2AmFUn6TqmTqJbKD83usa0rGsLZf4=;
	h=To:Subject:From:Date:From;
	b=clqeUEQTgxafrAYAhJeCsHufIDGpnv0Io8sS/TRjkfW7jEh3RHkj2LslSYgbaY3HI
	 vxRob1smGO6i7TpRXYcilVSbk4uzm/6nKsNa6a7xLq3Cu6MlGjYnWh0uXcGrchnhA0
	 wbfBEwPuBJWrUKjvMl/qkJw0OaSSsSD41uz5ssiQ8a9IqthpXRbVvTfNrNLrIl4VA4
	 W/d+lUTksbQqrhlsBLM4GId0Z47FWZwxY3+3uleElQ95RduRF5PYpkpB70Ifvp2oou
	 HB0nEZkcmPbBJZJAFyNV0x/kZTRZvGhysvtKfP/cAYQEGI8EEWJy9ADQ7tEmJhI5rX
	 Adf3YY3HegpeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD5FC001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 08:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169148238869.31809.733761356930206736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40aa2fa947eedd1db3d8fa88567d65081e1da7ed2515ed83bdd3d13b6f4c38d3
Date: Tue, 08 Aug 2023 08:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691482388
