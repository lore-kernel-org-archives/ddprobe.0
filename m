Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5342731EF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 12:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A8EC433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 12:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686139325;
	bh=lJTWE5JcH+CczOf/r88H/uueR57U3OITPL+LX0CDwtk=;
	h=To:Subject:From:Date:From;
	b=rOcmJq9i9XrMbG4AqR3ODaJLmOJcKw2TR7lDq7PdhPWVgqc/ZP00mBZsm516FfD1M
	 0JWBX7OcBY1Z9wLpcTVmTcCa3fhhnH/w5ciT3fhD56QnEWplhUMKABeIU2N2iszAQu
	 qm1lKZPyuPpWHb23Q05HhfxFbvjnmmnDpD4M3H+jmbO5tp5N7fyt6bfoJVixe2OpsI
	 AikQRJ8fYLj5PdSDuoig52x3LEkoE0fKCpxq3t2VICe/vAPwEOuMPAnnjP78BQOqaU
	 muuQOZGo6rYsbELIjHV5l9toIl24JaY73Up60+GYH24UoTbW9aCOOEyCrrTEKOjtP+
	 taNQ9WrDOjBYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64ADC77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 12:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168613932573.10838.11854145041149675314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 355b4006c42ee931a50a58f23a2a1c6668f2a81541c7de03578eba0fc48fb0e6
Date: Wed, 07 Jun 2023 12:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686139325
