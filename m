Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10B2F1FC8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbPxMEgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84A05C433C9
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700451496;
	bh=v6ABhplNKfhwBaqkaKnM9St4d1aRDzHEcFE9OI5kw60=;
	h=To:Subject:From:Date:From;
	b=YbPxMEgvcxsmE6YTYwRct26Z820F3f4lEuooj1JPeoKUllKk9M7Slj/A5xkAqHSuc
	 BJhZyTsXJMLMK9HQavgk6Z757iCaUIz6O8ihE8zFO7FK8O04LytTR6N4xkwppfpDRL
	 8GyLMrXpsbnkbjSFZ5UIcgqjA8kxX2Ea9cq4PAb4iWJRdenD7idKhfpRjxbe3vnaKu
	 sOYjH/C9wdAgj2orE+tddGNmRh5qZZTEwGgrXeeOuKywd2qNjhvZWnJCjI99Mb4JFv
	 p2B+LA8DQzCeK4C/HLxSfWnBUlCfSjEZYY5pyXVBs5oqdZAEHXLhSHnc1BDftVzKE0
	 Equbq7fXVM1WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63888C072A2
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170045149639.29363.17354817218648549657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec7982c60499069e92bb19018248029910e6ad8882ac9a34f73d2ffa6d5b2b1
Date: Mon, 20 Nov 2023 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700451496
