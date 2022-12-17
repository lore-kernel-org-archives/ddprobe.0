Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C127C320D
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F17C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671299487;
	bh=kXKmW/9kZWnT8sofxVjAHzpjQ2NEUDrg6vxAZ1vaDkQ=;
	h=To:Subject:From:Date:From;
	b=OgaIKjMm1gE/fZO0NnpNcJrxslunJkAdTwt4MLbwmyv6oitchBcJuCDTagCaTkmwM
	 5O5WhY0s1wJ3LHXoWyoOUUSXz0ewBXKDCRIBougR6MuUM2ZuXKzK6fZsByihey9MUn
	 IDYV09PbWDMaTHJOUM6EqwLBnuJpiF5tc/49RRVK6X7gR/opl61B1zyslGPDmp/wRe
	 2y2zRh1Bhk+cqH8+j0EB2uh2DWs7m5NK8wotkkLunX9VsoYIO9YDZsZQn76jEXDBon
	 DrYL5K/+iKUk9y6wkzkUQmtzl767EUalUfIgovLrvi/GuloySnOfzGdq68lLpx+vrt
	 5M1f8E9sBJiFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E05C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167129948739.25534.4506079099313755234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fb40ff73085cd51f5feb71c99fe7457715b27a7e491cfb88cc56f0fc110ad5f
Date: Sat, 17 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671299487
