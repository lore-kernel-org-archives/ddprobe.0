Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B36125DF
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 22:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EE64C433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 22:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685227146;
	bh=xQdfnG14DNs6Er4yNLy4vkvdLSQSfh0Al1kg3fD3iPE=;
	h=To:Subject:From:Date:From;
	b=gewIyUhnepFJkFdcBSMeNYWeMJQ0d1Gi6ldEpZxpKkFX1Bu/DkgIZF3n2nN/Iq4E3
	 4z0dvhgm8sy9ExL6ZKx7A47TDGbVrEsUpDgG+2AndSur7HQVkx2erBrdqrk7XUffXB
	 GEDc2utx3I6NyS/4kVv96GfrrU4cECzb3VTYgnVfTHVg+O7bivLqN0qiaPi7Oe0hAX
	 bGaGvJa/RczhmEscI3E/XiHKsk3oCEfMu3FLjuyfBTo78YbjLJTjajXdnu8zzEnTBP
	 +o8QwhLgMb3cJJRpIIqLEJmE7SApqAiH6jk+fbW3Sefm0P6wMLa3kjJWvHy2PF07ei
	 xU79jc8OvurYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E429DC7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 22:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168522714590.28142.18413703611517119691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e6d27785aad7ba6bc24187c874db512f1ea4531275ad7edadcc1c4f338f129
Date: Sat, 27 May 2023 22:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685227145
