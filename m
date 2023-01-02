Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3A028EE
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F79FC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672659687;
	bh=8tbxw7BE9z3L4YpJIBcNsWE+8ytiM6YKpMEe9i8H+Q4=;
	h=To:Subject:From:Date:From;
	b=lnYSN8p4OsaoXZzRgUffMvbCwtKNxcv0p0SAFuQ0rXvIBF8aMlfFDYtOIJm+itUBx
	 UbnIgcOL2A9r4dJxQlWADT3k7c5R/0gRpRXV5Q0QH5JLGLGJMNK8qpHw9jV88SamRd
	 GDOvge0exll7fWxnML1QXH9Hx6xEWbOteet2qNjTf4eTmM1mqMDYRHAjF51+EYfENC
	 McxouPWkIlMacC+d4G+igyj9OfugdJxI+iVlzvced9pACGwAOR62NEuDHmtOHM91+i
	 gx8uUynKr5hBQY6FbacOdo6x0eaA67H8gEyYzQn0m//CdaChcSnufAL/dSM/L5Qzn8
	 mkDBhwC0WkRCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 623FEC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167265968738.31012.12485534924045870410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c51c6287d78fe78f8a3eb9fbe616f292734f1e568e7efef20a74667edfd4261
Date: Mon, 02 Jan 2023 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672659687
