Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3944A3716D
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFZhHExi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99614C433C7
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698433096;
	bh=CtUMS8IJoRbPj7VCeEvuvb6lERJLSMGjvA6yB9yGnE4=;
	h=To:Subject:From:Date:From;
	b=gFZhHExi2VM7TwUAlbv1YUG3oDBVYJZfWsmMBsrYjwgj0owB7STaDyYbrQ0zV0q9p
	 itUfA4eWFtDXUXlofGhnds0BH9zhk9McK5zvsy3XvY5O8EXHK3VKzWuvhYYnXTZKsE
	 RAYRA0FGh63I5IXGOnJCfyo/CVxL9JnAYVYhB8H4AteS9bRu3zO4c7dNMmDhvJY8XU
	 3MbdL3juC3DFNqzWYiSuodol1jC7ZiET1Tf9K86sy9EAx0rH7d3MTnC3+kqCTszjoY
	 3IiPA6XIOCsiFRWgugXQLCFyYCtOfsZgw8Os/dryTznIS2qTAkKkvt2Hjv6KRyLN9s
	 EnwYztOOfQR/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7740BC25B47
	for <ddprobe@lists.linux.dev>; Fri, 27 Oct 2023 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169843309647.5300.16579490121265542144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe002c1e6b8a682c79a6689c55325755d1db6e9a35d896256d51cc4c1f93f06
Date: Fri, 27 Oct 2023 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698433096
