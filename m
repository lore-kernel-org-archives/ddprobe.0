Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60F97E3
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89070C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672105887;
	bh=l6W3mo6qnlYf+K/N+No8yondLfr/drjc4gqrnqRlpFY=;
	h=To:Subject:From:Date:From;
	b=pZop82K55RGtiWPteZlqjR/0tqedozxzgGmtlZSRArxQxxrZlEXBbIVrDjrXqV0ig
	 dVrx1xBqqcJhJEdZpSCkSI2qmgNshGAb50eaKxzzKmI3YWP2emYC3SVRV/Fl3SehxX
	 tfDmrs+HLVEM3IwIydSd3CG+d0h2RJXhWvlXcBooBQv0JZYihYEJ6vDcfRHYgMCQLO
	 pw+NM7K34S3x6d9YjPDmT7LtzU31lhmrk3RrwLT8WFYPBE1/MF3mx5/RYwERofN2l+
	 ctdatpXE6kK+OiLmbWQsQ7u0JqRJyYpt6HxMwhS8e/HTR442d4SXhc34+CsG4vq4Gn
	 RMx87rUWxFEGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B2DBC4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167210588743.22375.5765475091661733542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 971e83aed7e4bd70361f6bacb258e837f17e54fbea4ad6a5e603c6d49bc211e0
Date: Tue, 27 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672105887
