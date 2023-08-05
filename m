Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541952CA6
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 19:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFD1CC433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 19:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691262188;
	bh=MWd7dryixprOPPHQk1dX0txKx4uUFEGjfXANq+wR7sU=;
	h=To:Subject:From:Date:From;
	b=mtGWWwGTskjBQ6XKXTj7Db66FoF32P1q8ba0c/3aeCxdca8TocnQf5eQc/hHJFY4Y
	 AiKA3hRoFpaQk5QXP7KgbEUYTZO7WdVz9fDABTu9M8DKtHAHRY+JFs9nNyO1d+2bs1
	 uezEe3VrlI/P1GtZurQJ46gDAVyoX9XDbi2VQGc55HhDImE80oJCaydDWm3eLduFlC
	 8KcaogVEogjYZuwsEShz6O3hfPZlVGuj9wdsRHgUTQmHbkSPqjAaAlwmK8RS6w2hse
	 7S4Y4QxbIgVZzu92lWdu7lRRIpSbraCytOR3r6Vk4RxH9X0UZIeXKiyOYOkUlsUDYd
	 AjALZWpHXdLvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F3BC0015E
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 19:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169126218868.20717.17863069684136108525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fbb09da2ed1af2f44c8565f2ddc7f4a8cd41ba6109b723e75bdfcf501ce58ab
Date: Sat, 05 Aug 2023 19:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691262188
