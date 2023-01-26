Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357F31FAC
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 09:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8878C433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 09:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674726785;
	bh=zAGcftksM5eLB9cBbo4adlh15Kg12jRK8dJREoP4RDA=;
	h=To:Subject:From:Date:From;
	b=is1gwSefgwMZiS1V708/SKkqE8evs1mUERmk1kl/yda0XOwqh9LPQv7Drt3wR+wCy
	 fbZUo8WFKigHM/p1w1nQ2FNLDGSnotvJ/kQfLthQbmRDk0USqFBZYFyF3Ns+TT4PMU
	 Gx3gZCuQwcTj6fhdqnmMxNQNCKVMrkss6+XE5ACKnZNqSSrUqfWXHuMVHS7vlz8Vd7
	 x1o9JieBLXl+EtteykeqgRpj/3D5GE4r5Cg4bSIVz3CfvuihmND71JbXCgsZ1OBuri
	 YGxSOxylBm0rlTe3CMztXAQSJwLDCmm2qkFdKKeTF6oFnkBXT2b4XEmDfxWMExebDC
	 jwCR6cN05CtYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD372C05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 09:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167472678576.25634.2462462430643998241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7047ef865909d9ab39a261c30016d66da31ecc4984d897a64f1cb8dbd1140280
Date: Thu, 26 Jan 2023 09:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674726785
