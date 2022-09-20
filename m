Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE567C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A216C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663668653;
	bh=oTboQPd6soVu9xdKk+Oym1UI3qKjGzyyB+y4h7wkdbE=;
	h=To:Subject:From:Date:From;
	b=fVXPAPl52KbUGHJtc8UIyb1Y/OGLFk+z8wWrO9NFTQEKFyfvb+X9rxtRLjcxDNLGT
	 wVMGIXG9CiJETedDGGhqyEIXkYqaQuo4lUOEmj+sgPnTncTVnHS0X5f2BFQYfbAw8x
	 26fIQ+Kdx350FpJKQq1uPt2ewp1M9nrTUf84yQAkIbXU3XgaXhFqN5QAEZwXP7PEoW
	 5G7SuLthNhEJw86vNwePr5hCaltfmYnVIXcj5UwNUaj8cU/HxT/3csga6tx5bzg1FB
	 DhI4ejeB9EJezFr4Z9T5UHb/FoCzWoSjB3VO8YAxfnOM9/1x2W0Hn/z65weq8tKD98
	 mwkSfKfAp/HYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57FADC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166366865335.31778.9059735807402673624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5a2bd984a50a956f489237963a967f366a4e2adff514dd05371d51f500c989b
Date: Tue, 20 Sep 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663668653
