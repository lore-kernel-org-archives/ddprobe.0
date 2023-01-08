Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03512139E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C117C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673154687;
	bh=YjvSgzmPlhPX3/l0Tbm0oYzYZb+1UzdIdnMTGcVKbgQ=;
	h=To:Subject:From:Date:From;
	b=fAcQbBAMIA0saqcN3b+XI2J41Ks/UyXdZzJagOWO3hE+YLZDv1gilUVtO9x7hR8fs
	 Eaw9pGrV5P4USFSHdQO4p2numyNXwSyFYVZzOw/R82b6Ptv4NoX0wViXV8DeQ6T+Jq
	 LMqutzDTFXR9yLArc8fjBWxxOWjwXeLlwV1fR1R5/OIyRA0dDpbJ0AsYFpuxRfBbbT
	 rX9EhLziJ4RteO7dDu/UWoVMjSZWYgHA0a1hzS99f9qO23dkVNYbeTt63ckdNQfGel
	 6TEo8NvPSNvQZKQECC71hfAvSkmYV/Wv9FzwXpiwsJpBOUYLvp9cIdor5jNQFlynId
	 aW5oWXFqWbx9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CEF1C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167315468742.27458.8471682284035558064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f73b055526f64948137c8732cdf67b51ac73b7f1db3750d46c39a827101ba724
Date: Sun, 08 Jan 2023 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673154687
