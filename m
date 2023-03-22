Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DF17C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 04:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD17C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 04:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679461145;
	bh=CTaaKs9Il9iCX7rK/cHwKwsn5Q87gQTwqkTmJ5COZac=;
	h=To:Subject:From:Date:From;
	b=nOFqmPazNUzzsMiYyUHboqE8V0UHNTjw4t/2cVRvIA+Pu7hpPoEMWaEDh7+qrGOih
	 vF0fcPMHeo6T3v6teF5SF3UTlWFmG2Yv440N7pWapDsQprcXdPs8exw1LA6gtAhjW2
	 /KAIxCt+avTEZsACi1Yw7Cbtvlill8MPdIVnz7i94RtNjuILA/pPguqpvIkvH5UhDd
	 Jfx7ilInLvBzPd4hIGiPVVurcCnW9CXM49jvAPMi1UiHrWkNTk98d+8efh+YOYJlWd
	 5PYvk2TLZALpDHmJjrCF+tMteyY+3gSHX90CxF5n2RNjs8O97fKYPiql8rJMUaD+is
	 tsBdsMWk+lxww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C066BC6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 04:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167946114577.29378.15285268667105841962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c45c00b14c214fecdb6cfef12250c6726ec85a6904a74b44d275f4aea6c7c9
Date: Wed, 22 Mar 2023 04:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679461145
