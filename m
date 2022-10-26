Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6E7B1C11
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 651C9C433D6
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666802453;
	bh=01V7YGC5rWshpEnTPFrYMQind9dG7qe6g+G7FMkWkWw=;
	h=To:Subject:From:Date:From;
	b=glAJ0LKiHwv1s4JACgsY6kcFSRCLykYDA8zKI1iFSOXvZiy1wqeoyKM6V7+rQZINk
	 oJB1yeCul55u5xOvQWQYZbWpTDtsY9ppTh3tDb9IPjq9xdlNblpi0Oa4sR0I/Rx4yr
	 0MxrrCnlsTzNifRyasAcBFqoVE98jMDzJtXEfc5kRwBXZhWeT/YmnvcZe7jT02FSCp
	 hTyqZoy8mFOyT9BD3Z4bvJxwENXcdoxT+Cz6By6Es0pxNvfbNzR16amqftGyJiT+GT
	 XvgAJQMKZLui1kNKJdnALTneTCu4Kf1rViBQE6ZLyq4B+BkhZD6iUS8LOgsPVtFQ4e
	 CnsDZCxuOTrug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4ED3AC433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166680245331.14098.15836520030104129289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad3bcd3aedd35dc382c8bb201f1d6556164c17cb6c76cc2c32142ff9ae429e8d
Date: Wed, 26 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666802453
