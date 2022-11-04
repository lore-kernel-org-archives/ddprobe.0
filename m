Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8786A47
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 01:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7567BC433D7
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 01:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667525454;
	bh=zbing0o9qld3qyTG+R1xayd/NA9PkrM3avwg+ZzvMeQ=;
	h=To:Subject:From:Date:From;
	b=G8HtFCoYecp1bWIQz5HW1IULkdvAd81rDceNRboHM8Qp7KBThYvj7Qf8/egNp2Z2W
	 tHKnEF/0/H2Ca4wiYn2Qwr4WA15Uy18X+mrQunN1eYcyg0cPt0UByURO1u+Zve6Voj
	 DM9vzSzcml6aQ3AA+Cuz0/wYGLZrqyzMeC6KJBJk63nmDAr0fzdM8ZmnqUaYzuPAOi
	 CAIFrLzlQNazH4152hndGmn7TCjBava0vV3AJvKUztHT5c4d8FHLNxxIHOWYUIXC3Q
	 9HZN+4P3yvAdF4Zk5qQ2CDvHLe15KoCRqPguh4zRYZqmEkhfa1/TYZ17W2/O/7TmiY
	 RmVIfbGHTzhRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A4EC433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 01:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166752545433.8600.5953314746306000040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9802c9743570cbb6a0c63e904df9ccd9863625cf792e4451d81cb7c9ff9b979
Date: Fri, 04 Nov 2022 01:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667525454
