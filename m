Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A0C6ADB
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 18:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2649C433D2
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 18:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680115626;
	bh=aDigYdGkhCME5Nz9UrsyoyV16lQhVYvU/RIw5Jjewls=;
	h=To:Subject:From:Date:From;
	b=MJrvnL34RmS+fPwq1cegLfkGymEwQXrO2GmJ7CjwIbrLjAat+pdWk5LoQCSYgHo7u
	 H+MIygk+Qrlp5ZAS4yt8L1dy52wLuYAbObY4yXdWcv8FJafOn7CuWEG9R8BOEmY7Ol
	 t3vsIlPVjrnvKxeF5hpzPqXaCPz6Ud1ROmvG2piWDmgYKTPaMMJ0ABQ9sI0wu2tEkS
	 w6Hi/6nJBlgJ6lXSTBZNwYSxoS8UzWJozA4fTeFz18BrAs2EUW5TdEXcGm1Pf76g5H
	 GhdyqDcmGsJUTfcDXIa799L6FYTOYd0ji9QUYlQ5HGp1ZO0VFUPvaeb1quW3wF+Aij
	 ODJRUw5WdI2sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDEA5C74A5B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 18:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168011562582.28308.6346164948411068404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c80cad37f72ac383a5ebeb7dbd7a3b73b5e02012b3d6d77ae90b01c282d0368
Date: Wed, 29 Mar 2023 18:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680115625
