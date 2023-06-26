Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0541714A82
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 20:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48D1C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 20:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687812188;
	bh=Y7C3pnlPLcBHQABDyQ8SE+y6e1d8p3RQjaIVLllO9uA=;
	h=To:Subject:From:Date:From;
	b=TlVQV6y6xOtsHdDl7Bl6gMTqPPHo5zw5XNEpDAWnyOKVjFaOdCQFLZP3vmr1IKSNx
	 ZxSRXOwjdobudjsRhAN3lRIB+skWWt7UG7QR+GLCTNl11V62g5K0SMRmdWfvo8/VeG
	 +gs79j5y5lJDNMEgS+i1ofYPLJVQEZ6T93i28GmZliQJbsvBze11r5s0Yp5oH3SnD/
	 zAuk6ir2e77mZ4+cyQ//w0ciYDBXhPtuMXvSpkGr8ZSLZLjQnzQlktpuofdkccwIwQ
	 EWTgWUhlQc08a3YIielWgTD0HXquyorZvxTlevERabSuKtKJKge1bqjICMABkrs6A9
	 WdWA0X6fl/MZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B883DEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 20:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168781218874.9693.6817345394759888670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd62f5295b8d0fd56b446ae9b8ca263ea5261cef966afc5689b0847c32191d31
Date: Mon, 26 Jun 2023 20:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687812188
