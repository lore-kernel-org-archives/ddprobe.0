Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A662117
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 08:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A2EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 08:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684483685;
	bh=p0ie2VgZy+ph14H9lthsd65kcVsFsUP0+boqYc+38Pk=;
	h=To:Subject:From:Date:From;
	b=Bv9bzvnrjT33+3iEvdhdl7tFIx5sEJrR/HLom2Ne5BiZWrz+3Xeh3IaG3iss7Kx8y
	 MH3lJOZCQYIKqSH09ZfqRDFx4VshqsujHYmMv+csbnmmnzWCFNL06dmeTtvlZytGBR
	 GLjAv4vtQ6SKjopbxyYkziae0BLXKJ8sA9H1MvMe0DNQOO/jakLZU2thD1pN2NiAKB
	 KqfDlt+bqss+7lvjyZkvsxFvmNKX9peJQxGv/cHsiuMm6d+msC6Jj1GUoN/XAPqeoC
	 qdiqawl5kOTs/xFZL1a/Z0fcQaiwYVYnrlSeThvdRo2Ryql9NPlOKT+9mWkfCq7O2F
	 bo8qOgn8/7kVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B76BBC77B7A
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 08:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168448368573.22333.18213464552722901188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94f0b8e2c0c78f4feb6cbad76e8b8506e8fdfd22806e6ee623d340a4a227bf29
Date: Fri, 19 May 2023 08:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684483685
