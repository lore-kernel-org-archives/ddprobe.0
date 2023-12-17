Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01AFC44360
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SupAXgHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B678C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702816696;
	bh=WJSnYBwwhUCwULgNjOlY/OePoXev9lJr7Wy0hVwV50I=;
	h=To:Subject:From:Date:From;
	b=SupAXgHZA4zd/8cgVjdCAFpAPnCD1JWopPMMotCUs0QJ6SbsMTvi0uJUJuXdxt872
	 FTFkkBjrKWofCe1muUq2vtnGz9zeTZsVkGdubiuJBL0pZA0V23lQ46qyyUx5DcFxdz
	 uPl0k59uNJGWYPPaYYCkvjNxbB+NQB4oDmu5fU3tYQLNB6ZkRrLqInmyhL54CAENk7
	 1bLaJivGSNt8R5UHXR4/WdRdReyQIRdZ3HS4j2HH/mjiKK2MnIj05V5jBB88iMIQKF
	 Z+v8A/L3WaqsJsaDLb8mmACAX46o3a4kKvZfF/zPb2o9NCvXex9yYNg174CkNIvdOD
	 WWrLlxyV8OBow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E523C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170281669637.13183.13770017968150153567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ee1cb8af05a52bc6bca4b1043f82b531410c837f12fb43aee806f23e191bef
Date: Sun, 17 Dec 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702816696
