Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8ECC620
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 793F7C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668131454;
	bh=yz7pNAkwc/J73Ede1ofgOgdtaHWE7SnVqcxRKH4HmVQ=;
	h=To:Subject:From:Date:From;
	b=ofKDYMYAn15iQ8ItCEFJ93L/+zV77RFCcMcgyF+mXN8IYAH4eY0LTgNxkwHcpixa+
	 16N0u3lDYh5hIhMlD7PvZqL2sZ7yNGqpCmuPjVHqsi9OMD6JlFI175+vGS9J5ENUbZ
	 +btRcAtpYRBROnn5AbfRI+FcR2B429RzinWXl1t2SsclGWJhqXVBZYMRJX87lySlIC
	 XH5ZnLAhgdDBfcYuckaInR3sXEvHQq7ISMF840tXHT0jZUFNhF0N95sAJmireTsh5u
	 P22ewMn3AUAig9gr0QigvlIYdpvVIue/OBU7AVk1xhh3FBWc0DgbCFemItbqZ94JNq
	 gXsX+9IwUft9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58743C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166813145435.17634.16844599507274242107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2166766798a1103d967a5b3e7abda68111e161b6f1a0a866d35af722890357
Date: Fri, 11 Nov 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668131454
