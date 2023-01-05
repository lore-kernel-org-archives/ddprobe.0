Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D470E7B
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FEA2C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672883487;
	bh=Sriah4tUDmyEPBY7E+KFiSa2IRzALFqZjIlGKLgFTF4=;
	h=To:Subject:From:Date:From;
	b=CEdkJzcCiYtqbMmocYWhcynMSHRwl/j+TAobzdiLAJIaXWvg1oo+wVvpdjMk6WCKB
	 7exjcdxnXpUa0ozt+ywBaSLEjflieIVzRAYU/fTEYmFDFjoc4iab7RJ/ZQ7Zp8nT9v
	 UJqIAvCpfcZzJMNeZzkQ7zmIyUwNLoOpA89ng3MX4uXAGWJmiaq6uMdReT8sArisxz
	 eD8UadJepVhJC5lUYYY7XmofnH3nw+jtamh013qC/kQcVoJ5LTI4o/LbFdqd4MD6oA
	 LBaOfBdXCLfl5Q1Sd4D0EyiRFnB7Ar4g9JqzprInux3YDpw8O+1x1F83wQ93laDHm+
	 unaCL4imCn47g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6623DC53210
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167288348741.11339.7041685877545133519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77201a96844c89f87fa6cfcf51aa42abcf5046f618a2030382c88c3dddfc787b
Date: Thu, 05 Jan 2023 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672883487
