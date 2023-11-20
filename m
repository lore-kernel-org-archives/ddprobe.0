Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE0AD308
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgZl/4Qt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AB34C433C7
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700467096;
	bh=oozRWfk6XjlGZXsVSt3tLQIY5my3AIfBxN62l7YrB/U=;
	h=To:Subject:From:Date:From;
	b=BgZl/4Qt2y3cSlEWZ9UywjbCY9Oa3pvpwbt5wm5BIgWPJnnDckMbq08guGalSBO+d
	 GPu2K9Qq/SDvd/3Y11ZCkYAOyH6nUX+ZcrktTXXc3T6IjsN53aXnY3jmQzJgGEZ19D
	 2y/LqnEe3yVzgto0FCWhoLw1Uf25T2ObdI/AGzlQvPgzWEzcCL3Jhpp5rO7pEvl9J5
	 YhKx1whkrw0URq8Q6QRV+aQzQ45pZnBX5tOVW+N3vdr3swvMJLPME0LuNljYVWCkpD
	 rVnDKHKMhzRomerXmyGItAQgo+x4rAp7CvihSN5YOocRoRh6wj4XMdPIdZBUiI5PV5
	 BQg7kM8MXGg5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 684D8C54E76
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170046709641.12422.12495521434483461975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8919acf03760f7279fd09a2dc95e78e3d30d21109c14ff8648c54a1bef99888
Date: Mon, 20 Nov 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700467096
