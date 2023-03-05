Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D82BD2E6
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 03:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5B10C4339B
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 03:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677988025;
	bh=TaAdHaltOMLocw9XpyNNkqC8RVdkGPSkaYIvfeCLW4I=;
	h=To:Subject:From:Date:From;
	b=SgbkpgwO8knWdrsCDZB6Yyb3gjfamD/IDVDADqxLZuTRbJMZYKfxHJ8KTHvAh7PEE
	 B9OEOSKq7WBaTHJgiqLZxUxFdJ06URyXNO9gFyqXikgJRFYab16uVTl2kpOmAOfDTE
	 3Z1ZrzEqe6BK6v9D93bpLj/gju3K/z/bgCJMRih8+aq3g8KuaE1zDKSnUpAYZgeC9I
	 Br2lH+caYHaHGOkRVyIWpIJk41qG3At9i8BxSmZgMlcYZbWNgy/Kt+ZjoVWQWTyiw3
	 oU6NlDz5K3VaYN0SdoASyArqL+h5OqUu4/qawqS8BRd9ApyjeZL9WUZDIEOjpEHPLB
	 1jm+1Nj4xaItA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA70DC61DA4
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 03:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167798802577.15930.7406982337649004728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acece716d3f04dc9482bd5ea9962e61013bf5020f7a60c19edec6e10346e42eb
Date: Sun, 05 Mar 2023 03:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677988025
