Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0447E4
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 18:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E25E3C433A0
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 18:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678473905;
	bh=g50gyXWQ4Ospbb4MsE8bR1JQ/e4akbYiAn+AVh9pZoY=;
	h=To:Subject:From:Date:From;
	b=HxOCchPjWoWxn1KsoaOclUf7xk9Uy+tkOuYjPBOpl0tPLGOVDiKnOmaIL6gFN2eJE
	 4SlmZO0exFbF7KEq6VuABWyc0yWpRIb2TgcfpEDz99P3mcmFetFbWEuh7kPV2kMjnI
	 Zyyq6lXGLKlzjuGPDuBPPDsDR7gQo/W1m0xNetA67vEgn3rHADYO6FWkXYz6L/faY0
	 +raUIKdxMrPbU+KV8SB+ENRot8C4ER9/2TJ4knmAMs96X7Y6xKnoVMUCFWcoUMLQeZ
	 aQkEpKzRia6ovHQ3ZhR/GlIh15kOXeDvStZhBN/cOHz5wQpOiFPmEH60ezniVVt7OS
	 ucTlAXqYrAlUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2459C6FD19
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 18:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167847390584.9336.11712797431987993127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb21f265d02839ab949a93687a3bdfe154ea68367c6c4838702176a0abc73545
Date: Fri, 10 Mar 2023 18:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678473905
