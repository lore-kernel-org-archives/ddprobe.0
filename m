Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 771B0111A0
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 15:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F19C7C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 15:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695656709;
	bh=Tw82vWnZcZkS+SJa9d5/u6kYRAXfA1ojKpuyS+k1PCw=;
	h=To:Subject:From:Date:From;
	b=ATT1orzDWNBiWAe08Ze6YjTTTCAirX+gQ7z3siSenp7Lo80owwD8NfS/YDyAJ8qpe
	 znqBCo/rZik2oElGiDFWfBEQe8pN5fWOUWFjrSf1aUBP145fXZ9GvhkS1s9OA8udVg
	 0EywQpXzTqhIiYiaiYF0nYX6n3j0kZKEXZqJI+AXsQ4W1RsLMugb0G2+ny2A67zTxu
	 8X/duht2J4ATbo46yMVuwa8rs33HX+ziQiSZ/npLvNdyiwyWKKtx0ZeEZw4J7jPXbO
	 6Te2YE++lp3s3n6MpeSMZnplGCVnw6QG0ETdPc3ED5NRH31Rk6TQDa92vZgpMLhDxq
	 r7/tjADmH1XTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB476CE7A95
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 15:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169565670881.14179.9405335153913662971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eba1a12453e21b69521951000d390fbf2e669ee8d4749b63c31b2537d5142b5
Date: Mon, 25 Sep 2023 15:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695656708
