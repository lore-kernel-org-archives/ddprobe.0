Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C361D7E
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF82C433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669348854;
	bh=Vr2Tj6CiXM6soI3s1X2JYL9OvM7seYYwKVpLcdzpEGg=;
	h=To:Subject:From:Date:From;
	b=e6ZXZvb6Q9vJlj4Uw6/mrTnSGppGQI+NUsSqMEG1zqO3aNwC9LccRG/4tjNPk3cQK
	 9vpsZ84rEptM2Q6mm3OagTBGXaHRZI6OmDE64INxeGE7mP9PrlS4ovp6G4D4W5zOLW
	 w6vvyt0zxmzfsZZFq8aUuf3zLZm51qeqbCCViPFlc9d2jfVJ/sR6JRJ5KhIqZ1Brvj
	 JPoMNKtjdQrBualdZetxaimT6cD6pYWk7hPKS1H7HM6WpM6BNrexSQa7XwjPkwzGlf
	 RljRUYQ1o8y3q1bYZvXmE2gGSs4BSlW5czhxAwX49b+XWRHIFOgUoCvIZJMbNvZJmB
	 3nmf0fi9W4wtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 500D3C433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166934885432.7544.4331142888068437937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ac8fcb15f9a9fe6b9a73fefa4e5c873983e86f6e0ff36378e33ea6beed7770
Date: Fri, 25 Nov 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669348854
