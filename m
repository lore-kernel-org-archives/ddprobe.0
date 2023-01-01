Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C2F7C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D301C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672566087;
	bh=73Q65eLnOyyHq7OyiFoN7ErGeETz61Qj6ZjlgXGGQvA=;
	h=To:Subject:From:Date:From;
	b=bD3GwHGS0jsemdxdL6sYd722WvkuBvAN9cuzT6gBsXu0cBBa6z02pazBP2ZY9HfZi
	 dOriZaDtODrkj8yhj1FW+zgcrO7soYikqPuLMJXESAzFVg94h6iUGDhDDDj8zGI+9B
	 coY2RQmextOjwYFIiPI+DblCJuHFIe4xvYf72O/x0DcSLZiGhRMkoylvUKGOMKxfBh
	 ur6sQpnotZakAuzOb7MFA4SEQdri1mT7Yy5g5f0++CKJMlw9r/aLBQ+fO9JogXYLSO
	 8TZS3qK5v3GE1RK0qJjQloPV6XrDmL0lWC9NrMsMPmrf29MkLagF0zaWS23dCw4QmO
	 Tf6x7cwjDTPDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B133C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167256608739.21692.11733704060943756827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38f2abb38cb088d52471372ae71917c96dee1d2ad935e28892086b159cfe0e22
Date: Sun, 01 Jan 2023 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672566087
