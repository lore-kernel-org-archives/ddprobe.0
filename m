Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ADE717F2
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 04:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D99BFC433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 04:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688962028;
	bh=HqHIztQzOGuJw2FLRfTBwsCqTK3FdGaHcJjLlAB0vxk=;
	h=To:Subject:From:Date:From;
	b=EURbmy1gYnUSYBtxm1y/sdnwq/I+h52XJZg94dBhFdjOQ64sNBac/WsCNlovx5zo/
	 7oqb+AfwmFbPHR7uwBTpIcPT+c+WUCQfrIgbSvHsARYIxupiOBVrD7qKsksPSirxKl
	 zdJrLilJIWANHzme6yL5QYbGUNSt3MGqy7WlrEIJ6rkjUYPV0EjFdJxj5O4srLpF/x
	 NUgTzaHRtPbfhw/f3ce8hM1iyXPCguQqXg16kEqZJub/1gj+MiGQGRxuNJeNwoaR8m
	 15QdhIK8y94BK9EquAxbt87Kh02hYXBqExq3wSHk7mXvOzw7kmYLQ4Sja5LCebJdQv
	 r53W/6CgACwWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6C9EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 04:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168896202876.10983.8805936638402880013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7089cd71c1253d3a2d9685e07a75bfeba957a67a444db0e3004f4c92fb6d3fb2
Date: Mon, 10 Jul 2023 04:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688962028
