Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4487334CEC
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 15:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA8C8C433EF
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 15:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684251186;
	bh=RJIXdZFCAkAB6XQ9MrtV1qGNsU/FzuBKgdEOkMjodwk=;
	h=To:Subject:From:Date:From;
	b=ms2BHIkvTDGy00N1Ewen3JEoSLV8+0fLIP8mg0K/P++xu1OxFhaxmJfh7oEB1ofmX
	 vYDwK8rgBs81O+u8rEGN8y9evZ7sG6JJfmbqOE8BOsFzqQ/3QNm8m2rY2suWGqLOfO
	 kflV5D6tzoZJ673FpR9rmISywQMfQ7tyQM9horR6v39ux7Q7wkUmnA7u6/iQuzx9TL
	 iVllPw0+aXVrZir99u9acexkriDS9kElThJOep+uadnXnEHJICsKXkWNsZzwTL6eDl
	 K6OaiLYxMGAHo/Y2UN1zmn/GCC3r3M7T8DKTW6KuEamUHbjJE83l+uFQRpW8chDb4z
	 3hxWDNhYROs4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D049BC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 16 May 2023 15:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168425118584.20958.4196404739959948580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c7a4895d97777e007fd9e2c8c81f6c9c4ccef8c4623ea580ff31e24cd13a68
Date: Tue, 16 May 2023 15:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684251185
