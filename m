Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8B9107BA
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B5F4C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672961487;
	bh=9mClIznkdF2GnEKIHjTZ2JXF9/+ikRwlNZ08he84F7c=;
	h=To:Subject:From:Date:From;
	b=QcCKvIL9Ay5aAzcccoX6vw9oqS31692pJE1BEO8IkqGsLqcYSrWc5qa8iFW59mrxE
	 qo19VuDBXGuELBu1tIAUuvTuKiL7hDxaIbAFw5ctqFqk4+u3XWDKL9ZALEYvSulklX
	 mFW5nCoJqRhPghLg4fbf6uOVsAIX9cCBXZrGsBYRbGMcNfPd6bj+Z9ObVczB0iNgq5
	 toeKTNpysK0LIvnTU+SP8Sf30mczBqOjL9pmVcNr5x8tiwvrOdzpOUaBhXjhr+hiYe
	 NN9RT4bUXwXarJoOpGttSAjRONpo5TFlR7JmWaLxHm16jgEnUbgm4Ge9eGpDoSpIoD
	 +JRUgafxfQ0DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6416FC4708E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296148739.5784.5056271306626934075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e3451a904e608180bd19bc6be472e1ca35550cc5fb18c72da2c13a23403dc7d
Date: Thu, 05 Jan 2023 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672961487
