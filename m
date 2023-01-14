Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC1180A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1193C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673676087;
	bh=M7uCF/uvsR4kRZIU8ML3/Roo/pwNLZW7hddUF3JCHUs=;
	h=To:Subject:From:Date:From;
	b=Ku16pBA4kWMIltC+ul4vyMyOUp3BjR4ylpxvdfCfbXcKals3Kcz7jgKHE3l/3jwGK
	 G46LA0FZSsGHxk/zWCrVtvSHkZ1pyEVBi+ZtdiSGPsaW3s+J/55+eE+/ntHiQIQhPU
	 My7ws9YLX+AmT2noVNhaepPkbZPNK5RFBJPWK6UlaXQiD2XvuokhIaRg7kFaLIupBG
	 /MTzr2SHYORBJTz7qsve1Qap6wvqodwcjRb4e1V+svPeJ6PN4uQ3S/W5wkryMYuLYL
	 npmLLGHfIdyybzcQqYV3fIqpBjfuKPvPeUf+6WpD3GDpaz4B0H5T91bUtXeRMhoVx7
	 l7luAYNg5EDeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F71C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167367608741.27536.17411112672977310786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92478ba5d80be60c6010d11d48e5d32eb4c43e0cd5c400c3e9166daa4420dba7
Date: Sat, 14 Jan 2023 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673676087
