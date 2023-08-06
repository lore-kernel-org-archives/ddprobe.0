Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA33BE40
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 21:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE811C433C8
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 21:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691358188;
	bh=KtzU3fim97m8pVxzvJ2fzo7HTqve04THj2dPVn7/rXA=;
	h=To:Subject:From:Date:From;
	b=pnL2N3lKZi5uaWhyCbp1B7HU2NADOJwMHbN04lWLqsmAmHBUdqcfo+JhYctw/m2+v
	 pL5ey43WMx758kUgobAce3nxd3/1kT7yJyBZOP+3ri60ANvtZTouzkeL9SKlxM6zLb
	 T8IqrVvaP3UMimCWmpyX9dbzUYNp4mXYt9MYZm7bx00GkCBTQA8kYqY88jxaFvpeuo
	 VMzSJC0VYd3cMkEG64fHg5/77iJtj1rtc+NATf3twMYa42HE0CIA1t6fLy68PcGSmp
	 JM5qqvQlQqDTCZ75a1p+L3PkCpsMdBhhh3ipHRdXKPEHO3Txx0w0KKMuPGGrJiJl8y
	 GMT65FBDfIDpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B633EC001B0
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 21:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169135818869.10318.9201174026535830745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7480ea2cc9be3ecf81136945b5a0dfdc41ba62d811eac4af7f05a1c3bd45f091
Date: Sun, 06 Aug 2023 21:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691358188
