Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F4BE23A5
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 09:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0150C433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 09:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677143106;
	bh=3+9mORKmKwg/x2MaRKrldBI9iWYPqsngXkZfYDaKrSg=;
	h=To:Subject:From:Date:From;
	b=Hxo/15H5Psfb033uEbrdDYe9cDAqm2uT7/0xFgfmZC2qEfQIjlyOncfHiZ14WYEUz
	 2MwLgJUCfNZPrjfw8Mq+jnRkUcPuKFp48EUjH6TfjqHz8xN25TCFvmQlu6QAy/hGN9
	 Dxouxonpg2/uLKeFpHwX7olty+4ajTfw9aG27rgaGAGaj0J1us7cfOPblVx5ETPeHV
	 nDQhhQVR4+GrfTCp7yzUDY9CjDScFq3QF/i9xd9gACEhCv3Mi22yrKPhJveVwqMtPZ
	 nEZ6/3fVWT8zTLjPY1re5xP+Ojq7pexSi5vhaa1waC4tMp/1cYXDSuv3CMgbkNBbmB
	 RUrEiQHp3pZXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3B28C64ED8
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 09:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167714310583.21446.5106087520154836134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2063133ff695693bd00c49864e43c082a7c8ed633a27eaec1dc3462f4e2acc
Date: Thu, 23 Feb 2023 09:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677143105
