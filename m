Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1F037E
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F970C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667180454;
	bh=4j+YQsMtSxNUj3uHHhSqafRWU2mcDhfvuKuQw7kGeNI=;
	h=To:Subject:From:Date:From;
	b=BQK5YdU1qpVRbyKIGNu/u8sTpaTjOwZSyK0haaa0o6qdsqNiHDlT8gLEldsEVGVX7
	 X21vAqcm1OamA9irG4K+wT+IHenknj1qOT+WcmVkqIIVmGY8dKyRovnDTqK5uqlKzU
	 e6J64+ruiEJH9HNE7xRnz9NlLoYd+kqx5V81bOKipKLCpmkedf0FkToDJtn0hKL2IZ
	 kE+o5g3hReNjCgn29HKvQx+gvB2eSKGTFfp4Rc+ugXg6OPcy1btGA7zsKSAdFgOWQJ
	 /vlqOhIvkJiohWJuAHnM8gm8iYTh7SXwcjFm0WHuEJwJyzX3nsFRIYmLc53Og06VR6
	 6rXgEb+GXiqLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6180FFA373D
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166718045437.23981.6357445278639612183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0802aff4ee8934e7237dd6ae89d580d3d3ea29ca8c7369e6ad0839cbd8a4eb9
Date: Mon, 31 Oct 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667180454
