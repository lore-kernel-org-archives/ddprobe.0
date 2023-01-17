Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02341D532
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FB2C433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673984487;
	bh=RIQmQEkEFOFbLLaONEbdxyn7a8bm4tO2IAH+DWzQgBA=;
	h=To:Subject:From:Date:From;
	b=WBOoRtYnOVT9p2GP6CCFHC20uX58yjmFc1SjdYpOB9Z51Cy/Ombla3bQdhuh8ijSF
	 7bpYAWHFoVqqQZSdtY4DlwWjljueNfPu9snnkQlkY31W7xdr0koDV4+02xUmY0/NK0
	 IOkRnBBfEt7yNonjZY8JXDnAksqHNEc2db0BGjyR1i8ONX6NGtVupiamlcmx7bk8yw
	 tVSCP1kGLM7ChJ6CDfhFvW1oNQEY553iH7TzPo0idpx+gFiFbZJhNqBnQDJvZdTIeI
	 4xkDlypIYYqCCBD7SqbTmk8lTG8+HGhPP4Io39xedSb2LYwA+s9IP+75aKu/elqV04
	 litW6kdL+ZgNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 788D4C54E76
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167398448748.30104.6033057327189018059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30ca7160fa7b61b4887de9fc0edf66ee5f526b6379476ff39abe920467826e0
Date: Tue, 17 Jan 2023 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673984487
