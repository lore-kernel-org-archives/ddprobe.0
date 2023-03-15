Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA9820EB
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 04:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB2CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 04:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678855805;
	bh=ASW0TFfiQIKTJ+G9CaEDajdgvLJDAJ1drnkuZiWoGhU=;
	h=To:Subject:From:Date:From;
	b=YqlqIrRN59/t0cn8ZqrCMdgZvLxan8HtPkzUaa4RTbQsCqvm/at+1/YV9YB6p0cHV
	 Obsr0NBnqGM0VmSlvo0VP0P1bbRq+UYmYrunTY6S36rWzH00YCmhBfLs68eIzCPHqD
	 kifVuZPuoXpmVA1Rej4pHx8ROU7/myUyPGxgDD677eWN8CCf8h5MNaWHZqpL8UyLJ6
	 qh17lFMU8STfVrYSRBScxjLioLnwd3NITmYlmXOYvMoRaywTj80bN8VN1u96RBjGcl
	 A9z0PBE7xalZvMmzVhAnpPU8XjwXcCEDRSNdxNCmZEWLvUHr/dVwApFqGTO+fLb9/p
	 sIfyJE9uLDUXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE54AC61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 04:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167885580576.4596.17498318289784749844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc7edfa3ab509c1fb73fc8d83cc97fce838e8c3428784b4848963f2a0197ad0
Date: Wed, 15 Mar 2023 04:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678855805
