Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C0D3FF1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D78C433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664994053;
	bh=Fy/k/g9UxMaXtACoAjy8/HEY112zSP8eeEMfEM7bb/U=;
	h=To:Subject:From:Date:From;
	b=Xjq7GgnKvlf1eUiBudkh8QnizGUorIB3QBauCl9PpGzvxzP2cX0UOjUxNlfhoEp0d
	 +sxs1uyaFf2aAmNKG3I+YucfQE3RRJy4ZmEmLqGRRr2pLh28/VCVaqty2rXkOAn61D
	 UxpYWLEQn6RUkcJnl3CVfRj8/CFe9qKVjRq+pi26Y5PyLi2En6F7T5J65RByWBrHLs
	 jJNvvIHTNTrtLgCAEwq+ZaNSVxCRSwk0zyTkLJ1P1PP3lwbS1GpRJwEw0HQfzrxnP6
	 YDPj18/ZkJuiyqCqgM+suthl2k86xwUsBkpr1xdjKq93vHQyhjK04A96kpstPZdjfj
	 efddnA2Ugt17A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58AF9C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166499405335.6821.15712947490937959868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce08d8363c04ff23189c0d2d2ee577f7e8828cdd02ca2383f70cc9bd8ca9b8e
Date: Wed, 05 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664994053
