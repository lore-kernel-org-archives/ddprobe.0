Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6B47B
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 07:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEB42C433EF
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 07:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682408106;
	bh=QQ/iTRI8lF9+RF8CXW49k2dHwZ1BtU9rnqB51lcyNfw=;
	h=To:Subject:From:Date:From;
	b=dsam/LNXq2X4WrBQzpaIjdj8LxOK/1nBmtrlIlp/Ef6LWR1HpW6k6VTAlutGASoMF
	 AUNKUuwH+GWUQaUp/w0osW9QTaxNUAE90q6EF+rRdLccmd4+os5ZZKyXS+5tDX7EnM
	 bOBYxDJT41+9UrkxJvjZfdCNfJeSU1b0nQmAwmAjdwLzY2eBaTOMP7Sb6LEO1tMTz/
	 Xq+su1H0Hh+O8cajfLsJ6dvBslBzXN8roCH6vpXyfw/Jt/bhV303rq8bk8nQlMKSJW
	 ou+W3EMVcvZ3Fyp06QgAXQ7SKPkFPpFOa3Hf3b3IzrzDN/Kwr5qxzItorkWq5gTGcH
	 ulqztXCYC1U3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA7CBC77B61
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 07:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168240810581.16700.14093696076951561315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22bac2b1ea4fa337c207b031711521c5c5b1df73295bae0cf18f34cbf14842de
Date: Tue, 25 Apr 2023 07:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682408105
