Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A536615C82
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70406C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670268054;
	bh=eLwMOS8WyqkB6hlXGZUqTosF5cVxzEBPjqwx3DyKXTA=;
	h=To:Subject:From:Date:From;
	b=bGKeTGFCcRvH0RNI6nKTs8uKoTbJEOvxJURCW3Rg+sjfjZlOiDY5u3bjKGtNgVn9B
	 AlqyRffmjkaoCZKUI8qTfV6lby2e7ZYb7c+jkdaFtarNmdOuGrCJ1vM6o22rl83oQa
	 X5RIh7chZO8aTVVYw4uPmFq5RisFqWLB6G0VIwa5PzcV2F3wiPHhNd/5lA6ujfdu5R
	 jOClzZ2IdCT/kVJq/Rz1juaTbdkawYN2dv680fvW0B3QSGrVRZohVoi5EBZ9aqBZ7j
	 wbD8H3vNlr30UYboqyzPS92HMYPw36LZ0jnYTKlULqzSUzxDIgT66mkcNAVdNBJw9k
	 7J/ESGeizPRaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5941EC4332F
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 19:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167026805435.21665.6030931706531193515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75799a5a8917fd14fb47b441c53dc0fe59d6ccca80725f1a2c88608352c1e292
Date: Mon, 05 Dec 2022 19:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670268054
