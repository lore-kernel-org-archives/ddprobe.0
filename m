Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60260C2C5
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 13:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B4BC433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 13:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687959788;
	bh=MB0nhi9PLjFoRWlfaRfp6uBb/F43vGxvk/WNzQxTTaE=;
	h=To:Subject:From:Date:From;
	b=MLjzBExkVTu4BBH6OcdKhHoSfdpMSRDBgMP+lxLppPaal+FlaSHsktV98WFKhOeNu
	 KU9fyYJt+R6pleDHYzaZwhQ9ysrhrOZYQdesayi6dBnRHGCnwtDTq/15ymYKH1hRU3
	 kztWEYmZh7ObRlDhYAIlmknVHBl9Al9De8CwqLig4tHr+LOHrr/rH7XNM1cEexEPRI
	 VsGoGnrHnO7/CzFhRGwPeRIvsTYEufrQdfD+rhjzY+HMxjZpaUM/pvd/KTcnEdo1MD
	 USePDGVwhZ9sssbKU8/F34Xao917Hf7q+3kNfiKRWUpM4ZK55LD2FahHIqc4B3kYfo
	 yJ/7jnWohCcFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EFFEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 13:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168795978868.27436.9210489858750377505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361be8b949659b8e1de6acb03454922346affbe542f3a099be35550bcb710932
Date: Wed, 28 Jun 2023 13:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687959788
