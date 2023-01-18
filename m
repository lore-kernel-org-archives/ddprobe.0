Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5DD1C04
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D529C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674013287;
	bh=ui9XNEaeQfLW4TZ+5E54cciqdcRY3dgWQOGJEIWIbHA=;
	h=To:Subject:From:Date:From;
	b=YMIYhfFTGwNDtZPbOO5HJ2SdGDCvddDSmznLfFlaPfYNVLmNLohHOfFrRUymB+LCz
	 /OJiPIiDbamZnpfk40e9/H4AF7rzbp3mY6lbRK/2Ppy9nB9B2zItLL6KvNXe5r6VJ6
	 TWNQiIwZhjnW96egVKprl2n8MKsARo3f0MaNBjGLbNw1P0TJizg/XvFlGvthiOIAYR
	 dcoZ/94eKkPFolqpxY5B97LQOsNRtfynNXr5PsuVNUBvDX+PyyCbfy6PP2xddeh7bD
	 KfJDLQMAVVF57MmtQw5yjt4I5NFskzPg2pWGbXSGuYz1t8UDItnuVJS4g+hhOqZkbb
	 hw3tJG7iYah4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71628C00A5A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167401328745.10014.7205198955624695347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 932a1b5aa450d2c850b259e4685df02ac6c3ef615309e2cce758370c791cbdde
Date: Wed, 18 Jan 2023 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674013287
