Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB92B881E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FF49C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670421054;
	bh=tI9Cqf1eMZqLTZuYVS2IjvPvGwUU7rDpvBJz6F5oZZE=;
	h=To:Subject:From:Date:From;
	b=j0uLharSvYa1P/bPp8u6flXtXyIb1D2e7MLLwce3kxiYUbQunzuOdk97l8B3qr1sG
	 DVXDGdLHT9NpBdF0vfhZzshmkUm2vhuyIsH8jeyyFubDelzJep8vVPzzP4CVhPoqtK
	 d9XT7UuH0C0YypdM308R1I5Q8OkzwYqSd0OsViV+/9seXJLpHBfeEdNkHiq7Li4p3f
	 i4eIW9XUA400prQjZsRV/VwhetjLGOuuKIrNdhFFtvMFKPkDKmP639qET1raKXaNUF
	 LiksW9kPA4B+1aO+GVYmRj3Q2GW5aTpvVq+xBxGD/Ju0k9XRQSLQCckdwGdoRuHUb/
	 2piVQNRoEzGYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE05C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167042105431.28360.9590431870628489371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d413c78ce48ea5aa0d0add9d62b3f22525e309f920b51b80a3d10e5ed4f06778
Date: Wed, 07 Dec 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670421054
