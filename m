Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0202F47
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 828F7C433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666188653;
	bh=uuS9xE1CmQC5lPGmZRZd/iaJnIlgx1eMS1RocbZrNxA=;
	h=To:Subject:From:Date:From;
	b=QAHtblcoXJEoQoxtL+qmBfiBfGFGinMzWWfEuR51oMy8SqeHCzBbmgN8XSEQChim3
	 4ER7Q1hicRveHDuVe8GYhs+iGgWJVcH0rJBcZS2E3BItJOyHNcWbNu4gIXthrzz2s2
	 mPi5NPNspzbahLtvWIISbSfhokI6S1UUVEsYPkoXCvOZAM6IqSoVRdNhldch1HAJYv
	 a3lkxVWrjxahh3EpwL9iTxkjP60wcTSiMW66y63PMjDLDApAsqvZJGsUl8zWR+2cE0
	 zBmYXV20RODO3hn9deYNSkaRDnYRzGDgDDGECsjYbiUhzkOCT1LZ55PMv2O2C6t3j+
	 XuLS0tlY8TMsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BF9C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166618865339.17056.13129865972903847171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11b697bf487a84add56fa9ae2a46882c817a13b2b02dbb9cd0bfdda1cf05cad
Date: Wed, 19 Oct 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666188653
