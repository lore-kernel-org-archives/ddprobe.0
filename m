Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA8279CC
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 14:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC7EC433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 14:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690987328;
	bh=5l6OH71+KvG2+mz8TCjXvkkkm5Fd1rcsD2bD+7z0Y1w=;
	h=To:Subject:From:Date:From;
	b=FkPOp828YWiGXORGkydnoslOpN+UXFMMnM0s5Qvjq8Ml7hRw6cEK7ClFxs6Pe6NGF
	 D2a6f5EIFRn7KSYOBwqWk+taV/JTRM+li/9aVMMFkRZh5xUaxeQ0Q8xFXwr+VrDQ7M
	 RYDFUzHspCadADglcJTSGNwSDt04Sf84aUuOz6N5R6U25ktXEOY4A96HOOe3xUNQ/j
	 QLT7eDV9th5v8+m/OVH1xz3pC9Xi9qHQwKPIVvu8dZKkA9cdECYg11PSQJQhdwzs3n
	 izvf5XjOc5RYmlTv0qgMZey3WI8KWHVoTgiPMQqn6YoSEquDTyjndtS83+R7iCVAg0
	 huRm77K5jvK+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8510C001E0
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 14:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169098732868.27584.15594622116938065734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 265de0d2ff8005cdb73d6eb2527492c2c9b71f564b8f109111034ea0c137403e
Date: Wed, 02 Aug 2023 14:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690987328
