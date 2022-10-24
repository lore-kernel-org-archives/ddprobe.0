Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF52E620
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3B7C43470
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666578053;
	bh=WSZQ0JN9nS64NRx0UgWor44Jnlmsl4MhjQmF4OMrG/o=;
	h=To:Subject:From:Date:From;
	b=jf2Sys2L+MQ67fyScq1ij9AfpxLvsxXEs79z6MddvJZ3D8qFgaJG24JE8ima6/o3e
	 UW5Wyy64MAOK3OMLl2iQ6PRf8AjtA7CMrQjfEFfME60dEQHM/Ctxmz0d4M2MyhdQeA
	 nXvy6eH5VbS82DuwHOTfdR++myOSSMGk1o2TbbaaOjYqMhBnTZRIchKo2/e3ymO2s+
	 TW3qPqh31gzC/BdyYmBQA43CE8tPnLiaMFe7+epMaU4sGnYyo63huIA7Td7y+uzJ8+
	 ks7ux3dI+KYaMRuGM1xkzwNJFxYL4P22GnOddd0ba0fg031o1416xajY1AfK9e2gjZ
	 OAVnI9AeV2VSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52610C433FE
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166657805332.13128.16145376065000738515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8002564cf602c634c635527a61a096b122439fe7c43eadb3cdbdbd8077859d21
Date: Mon, 24 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666578053
