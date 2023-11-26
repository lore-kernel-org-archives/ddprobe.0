Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5358C13
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LcY3OlJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EFC2C433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701021496;
	bh=v7J2gYwaLyc7s3qaNVzf3UaMNj361tH93K5gu5VLtUE=;
	h=To:Subject:From:Date:From;
	b=LcY3OlJOhAQqR+1iqObvISCJuHbczrfW54VfRmzlTkl4d7pvJw1kYD8154WNjBjo5
	 XQskJGSp9jj0ybe6Ycy+fnpLRBWUXaye2aTrMZiV06KDRnFsSwleMM8izbTQDCWpJS
	 dLoC8CWlQQSfgOvxPZgS5FgwzI4A3UAGlyNtznH79l1pOCePC8sjYgX7VJYLhOBJUS
	 MZMXoVWT2Du39Fawdt+rD5q07hZxqNTOg4S9Rmf4Q8NcTfUB46KgiNaMONeK9l//qR
	 AKH3pWwNx+3P1F5FXEYt9DgfDC+TbQcBEScSc6xDuj8rvlypqiZ2QoC3DEYxOL4Cv4
	 jkP4bnuWROLLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E41C4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170102149639.24045.11469670924851776766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c60cf13251dfd8088070e65b7713310c13f155e947e4ed5d677e185823c6e04
Date: Sun, 26 Nov 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701021496
