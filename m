Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47CAE5382
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWz/brlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D9A9C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703428096;
	bh=xQAyqS1aT1waSV3jKE+Pb3OpHkQf4Dxl18BJRxYH3wI=;
	h=To:Subject:From:Date:From;
	b=rWz/brltqJr1WO2v97ezMgFJoW3jmaBkG1OFoVxQtd8qy7fB5jTqTqa0tz4WCooss
	 jhVqbUXLKbiVvUzMwbIqhp93MAZMm0CiiiOBVjtCo4mRCV/vvEZeOG6C42myY8alOU
	 dxrgojfqxuiQY117muyhkk8ykRjKa01uO2crVaZ/xBGir7Rt7ofZbXSl5G/mDEeuxb
	 bNk5E9stmVNrPJ8PkXxNI8F1+DaiC64I642yQ/VOTw4IjvGF3SNzUoetxBy6HgyFRy
	 0sjNmEBICGBi9TfskMUIzh3IHBTjSBhpXi3zZYH7qe7OaRht99aVjMWu3osRGBRGFB
	 J8ZIsxiRb7wTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626EAC46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170342809638.26161.16264418842041522445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1721a96beb54539b43b859f6a19b38b02eb3743cc01aa6bc412ba61010332ea6
Date: Sun, 24 Dec 2023 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703428096
