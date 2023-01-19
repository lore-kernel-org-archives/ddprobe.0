Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D43D42905
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 07:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C19BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674113487;
	bh=EFbYo0ya05AxWBLUoWe1HLwpCM4Ela5IDrryyNP3XVE=;
	h=To:Subject:From:Date:From;
	b=C6rdCQ0PN/uMWP69y4tgw08r7EhRRgO0YX+WfjkdAg2/Gi0amEMBWQMomveIK45iv
	 HDrfL6lqrd5y/5AhBUiACQdt7B2ZdoLlyvU4sZ3+OfK1YUHswx5eJ5NT7IKC7bWOxh
	 UUG1oWxgJqvsohWpJ/2UihYrqUq3RJW5Webmp3X7+Dd1/kihi6ebzCXkWn9zewh7WG
	 75N8fCJrXuFuycdpDAct/Y/07AJyDYrSQwdEamSK/WgD/AaMi7co2z4jzx9u0Rj3XX
	 mkKBS9cq/caC5lwQIkaQ/4UBRr4OSXe34T/Zz3IVQSki0/rU7NhWdqlBreIYunyK4E
	 3OIEdhgfrrEZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F077C00A5A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 07:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167411348738.24613.12136370807858000062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ec28f004a22b97c7d1a6ab1029da9f820083f91a8a09ca953f76d7061e0d34
Date: Thu, 19 Jan 2023 07:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674113487
