Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4466C2F25
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 10:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD273C4339B
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 10:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678874405;
	bh=gT90AoGadVOgw/7GTpRAJ5Y9Ew9vyizW+pYpNGjXvEQ=;
	h=To:Subject:From:Date:From;
	b=Ag1RT/sEeQ/9T6Kq/qR3UnM5HYJy/RJJWI6XmcecaTRE2SmkrcVvf/I44VY6ibukg
	 uUsD7/1q1z0tPeeMojpPD9R82kFHxolnt1kDr4vW/57gnuo495er0zfkb/wxjSrAhx
	 8tgyhStfqnXllG+G3x2msufVdM+A7EQgYi1WXzTK5PNrwcz8XMfKp00Pls22UpRNkt
	 EJxM4c7qb7ujxuqS7v5UecVfhpbU7AaYtM8TQNBbvhnYX0kzTSZOVrs0ZXflNuG0Nf
	 pRy2KotLmrVJ8yOOqJT6Z4ZpuyrZPOFvNAKJmUPmidw4AgehP3kOdzZTzsC9th/ot9
	 ZzIBeuU+S8kUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A6EC61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 10:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167887440578.20661.4112044978319535925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add72b0c7f4e8d82ef6df562d660544a076ed8d52c62bfb3189e881a23073c45
Date: Wed, 15 Mar 2023 10:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678874405
