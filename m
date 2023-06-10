Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2B7290B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 23:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 032F6C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 23:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686439326;
	bh=1hAmNLHZb53N4qMOrJEa6ZrAGXTZd/r6HRBZE8O0mIk=;
	h=To:Subject:From:Date:From;
	b=ASVKCBRNwLZauUJO9vvJzi7j3PR58W5LJMy2UDDH+TtjHMPwMRj4x82Qjw1WJEJDb
	 twQtch+F0vg7LVo5wEtITZugBl87L9kku2iVF9XlJv2G71MrgwozkTNG2cla22tyl8
	 Do6XPqm6iDJ+NeRmoOxcAbL/oztUrDJEKuZjlPG0qm2Dh+TuVsaYX3B300VgNX/ooF
	 VD1EcwRcfbuX8wWlm+FZb9dIojZsktMdBNtYsaUwYODkte6zx03rXbT9ohOpjaIiG+
	 SmfSJTxysJLnksmnz6TCn/ugM32E5dmUw1cTC1Mif0aqChKKc1EHPfx1976Qz9MwrN
	 8IlnAQxt3D8pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3A0BC7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 23:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168643932581.554.4177360389764606663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4644f505aaad5d4f90fd540a406897db591abffe5d21a8a2b2e254925e3291a
Date: Sat, 10 Jun 2023 23:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686439325
