Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C855B3D62
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D6FC433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666284653;
	bh=x+8xQuoEefO+HMUuARX/27qRdJkrGpfvWPDax1ErIIc=;
	h=To:Subject:From:Date:From;
	b=X7/hy8P28+cE6FkrrlrZsNn/EZdQ+WxC15qC/nALld4DeVW6PDODUKr8EF/5+U7vq
	 ehdJ/B3dGOsSN6/0qy5aBh+jfV93Yo4DZKXNazsbS3+UKd4iz4D3XzEpFrzK4dhahf
	 NpwwYqrU3D/FhP9UoHX7Np891rHIZB5OzUIHDxbZp3rwIfOgQiflaXBX4QKmMZ/pJZ
	 dQJdx54qvTqHxRk3BI++ZevOzlxRWsQM8SwuolPFI78FYiJ1FuIgj49yWLQ77dTe+7
	 f7WUN5ZhKhFLFjM3nk5x3s1TaGApIsjHfAXYJcp+WmzBRGcWeOWABf6rlyTQyXWEKe
	 53oPlXtKn7vlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CB8FC4332F
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166628465342.30796.10694472947617095315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026b02ac24e5337988577f4a9394bc57af998e79321e0cce03d751f2b6bb1dd0
Date: Thu, 20 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666284653
