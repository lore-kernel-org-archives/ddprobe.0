Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF422632
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 04:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C4EFC433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665030053;
	bh=bG/0DvOWpJbK6kLOsC6zMlnuUvcZy54GO9CPiiY5LOc=;
	h=To:Subject:From:Date:From;
	b=pQoWapgkGmpQXQ7ZM+jGIyICd8WXIC7ww0gikTpLExGvMjqJvZ/6RAg2q27qAoevg
	 rYJMxpM/+14wb59BC+a2gSezpG92eUGZHpsGAOA160CnnjFbL9Ya86sxe7eHoaIM0L
	 cVpUJ1bR9cNkub5vnuwPQV+MME9kG6MpyJdssZedJduNDYSOH2Mi7233X8maLEQV6Q
	 TW71wkhngQIFi3sb5k/V8J+ACBuNlTD3mrTYkvwaNP+6jX8Ptre4Fpkysp5fcwW8A7
	 3TmFET2Bx0WvABkSmH4EZfKo0wUvWmROmnTYlMTxCJGi3L47inDGLqJpoTK1snofdv
	 cQTYbZG7b9HxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51064C433F5
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 04:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166503005332.24593.12180125399040424808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2cb0cb27cf9a987c17eb929912e12bc11413db7f1977769409f6eb6e78cfb0
Date: Thu, 06 Oct 2022 04:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665030053
