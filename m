Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139FA1C20
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B3CBC433EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673934687;
	bh=sPYuvGIXzxhWpK1t9CgfeAdGiUiirtca/YFiM00tLnk=;
	h=To:Subject:From:Date:From;
	b=tZE9CeqinbV9VtiNNfEhQJk6oyR9OP92B88P1ScIvfabhPwDNcL0CHnVDqni0CgVB
	 jvRFWgVquaY6hHafivT4DEr/zPs5b1wqkzY73/z421QPcHxDsn9IrPQwEhzM+gRIfm
	 vAqc6+/eK76plhSMLaJSqYsLI4EBMLMU/qcPchIjhBaAf9Vn9C3sc4cIyDppnAcrwa
	 hwirZAS5fHnvgN+sG2cmd9DapLLo6S+9mJd6U1y6e2P8lLEKskrj8ImkZ3HsIxlEED
	 A3+YZ+eInlb//S02CHXCf8vbwsZz0S2q2ujLmnyg+jJPNlmwJiqDIsAFdJtX8CmyK5
	 rsMVFJ3kILJ1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77164C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167393468745.16053.8736445763083084824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f920261a398d86caf3e36e713632b8f4038bc8d8b55b63b9b2bc8c1ad6164cd
Date: Tue, 17 Jan 2023 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673934687
