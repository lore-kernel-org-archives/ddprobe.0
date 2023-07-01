Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828FA65D
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EECB8C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688180049;
	bh=Cf0oCuuVyVdPvLZy4Yhg6EQv8EzNsjxyLPwiJkmniww=;
	h=To:Subject:From:Date:From;
	b=r6vPwqbh2zghJtpILGBiEleyBrsc+Hj0miMxzEcjFjcXqgXzSjnIptspv+NxpWis6
	 ijedkHLbOSH3LcsQKXi3CVwU9pOecBFM2ska8jqbJaPWuSDFtgsyy1VVp7hUwnDjo5
	 PLi9dLPvGUV+pXbOZySPtccEQ9X9dO3W1n4PFeWJmz4EXCbnbzJ1chVxWD7PCstuy5
	 0Ux5zT/PAuX9+N6It2xXVIlCsQhw43ILp+1gO6fbCwkmp4vk9QL386ux1oGw3/pN/q
	 3omhiynIA0VXE32DnYvRk0P2bKZxRf7mjTraHk0XbROzS5wSm/jyAggr8IxwWlnqaY
	 /EQgEaGKXmkNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFDF2EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 02:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168818004876.9626.1481920267712187200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7cd568359688cc66ebc98b74496a8be8733f8e5929cd5487d675587a45789d7
Date: Sat, 01 Jul 2023 02:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688180048
