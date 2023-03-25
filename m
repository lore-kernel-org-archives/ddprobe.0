Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5958320EE
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 09:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB2F9C433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 09:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679736726;
	bh=9P4aEOQrmXlYPNLhlDWxbhCj73MHRctvLXkn7OGUODE=;
	h=To:Subject:From:Date:From;
	b=AYtZ6xiM7fdhqqfSb99E3MgeEe4o7vXwh83GSx11lZYjzrAWdGRmKpdBw2qvhULy+
	 dVFXZId/CAObTPAkZ714OOM2sxc0swoRAhoOrj1BiQc+RQXpKxPnu5GAdG8i7PS8SX
	 Cmq7u5tvRHlxrlMwha2h/LQOND3+v9q07DZs4pN1VPppDnIxvbUYrKHwN0HWbCG6BI
	 ja8ns45lA01p39SdKnPxTY958vU80VqsOD4qS/UqwR7+uDhv/lya/Kb4ib96ZNaWvp
	 W+0x2+9kcmQDpuW7OpNdabX0Qmxm8lXAc/O807RTpjxNlVQR8GltiEK5VWv+JVMCgF
	 SjkoQQCHnTcUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5E4C6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 09:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167973672582.8274.13522841788671102889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1d96c98e013b366f6257ee13cab523db81df0ceb0880b08a4d13e31bed9ce0
Date: Sat, 25 Mar 2023 09:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679736725
