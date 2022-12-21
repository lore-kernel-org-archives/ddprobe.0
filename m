Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6CDB1FB3
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8023EC433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671609087;
	bh=VM0n4U0ApwpAQ9MfA6K2Jl6TJ5ukr0tS75vJ/BDDpYU=;
	h=To:Subject:From:Date:From;
	b=GOKLNZtokW/2ZceSTpfWJGSiwYOD4P+QJsm1xDAsWphLUOkOLRm+nXmix8ThdqIOf
	 SLnMJC/2Z3HWQ9CcKrV4gYGYGUJJYGon0Mi8NGZAEV/N50Ik3tt0MkV0/7MSi9GCLp
	 EZQ+qSo7IbqtzTpJyZlb76unehsxu2tQxO//wZZg4aj6tdSjnrKR4q5Iv1qMmnwHy3
	 Qier841fM7xPiJ2Z8At/ytWrxQqfHZ9U4pasB3rRyyO9UNDA8YFlVTbONx7vnx/pDN
	 g3mAZpOf1578GJQKRVckTFCE4n9fVn1gUxu8Gs3mre9J6DihY0kDmoPAecaNUoD0qN
	 Xr6b6jArNlUdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63627C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167160908739.5134.12209755892458269390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f25d3c2b41ca1fa21c4a58794aa6cd2f7db08ed69a718422882e6d0675e706eb
Date: Wed, 21 Dec 2022 07:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671609087
