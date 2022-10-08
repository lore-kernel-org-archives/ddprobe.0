Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D229F2579
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F232C433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665271853;
	bh=cFJcFTE9YYs2ZeMqUSSwxj/TWDaL10p4oH5CsTjmxn4=;
	h=To:Subject:From:Date:From;
	b=GCJtuzM39tFyOTAsgURfXjJ+vnG4dHVzA0GqKBx6c68P7prNHptb6Jgq0nft/vwo0
	 vz9ON1dqrPmdrIUn5TGhlCtCIQYpNdkmlZg1stY+0eynfEnXBVTcvJWp4LyB9bg+rc
	 5uDo1S8Im6uvkT9+Eh6UlzQUjdgTqmTwTgp75Ydv0CV3jTd3vVoSNwFPP6NElyh36S
	 SJQacPJcBFtRKpmzKPEK29iX5pk3DqUXx4UY+kKTTZgdwMwQX6sktnrc9Dxb5A3EHm
	 2PVSglaPQpMJvaj9ztmRw62PRUEkwtN+9ebOo9VarS8VmxJWX9mWKV7f6Y4ZZr5hdV
	 alvmD6oEiBfwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F46C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166527185332.26345.2393631231681011046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9e41a50e4b61afa1a25800c6b610f5fa66732b3d7ae06b75390771ec0dcb6c
Date: Sat, 08 Oct 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665271853
