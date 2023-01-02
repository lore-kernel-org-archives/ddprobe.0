Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED2551362
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F197C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672627287;
	bh=JyMcaNI2hEpCQrRY2R6iFg6+AN3h9yDIIfOspnYNz7o=;
	h=To:Subject:From:Date:From;
	b=tAAaf9En7xuqNrCNYS23d4EQ5FEZOoalBqCqqPlVdDYFChfUgor/rBb22yEAqkXfB
	 vmL2nD2quGSeud5perZcnHH+uwTEbP95TCLt5pqRhTVAumBJ6s6ZQcUnD6Ovq/LQOH
	 dPH+NHrMNliVuJn38PEpskUnURLWgfpDCLkekMpf2udHWLfju59xk275AZ9S8OAVTt
	 NoHDC3KVht/tuAUQq5tXuMOg+BAXgv9N+gDpHpj/Ri4vT08rvTrPpascSlfFDFFOmx
	 WWjMz/7o2MLK4gAfsZEM3zoAsOYqDbfgnyG7WvouBojX/ae9FZLYsYRNFsdGqVa0YP
	 M3M+2+9cOCtCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 744EFC4332F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167262728743.19739.34725281898511236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af54074eafd8d1961582ed0e29c430e84ea40532d152c65333731e591c85153c
Date: Mon, 02 Jan 2023 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672627287
