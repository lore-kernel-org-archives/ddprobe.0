Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79C546AE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF77C433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666113053;
	bh=FSPhexcPqBZUnf0bCq+5bKGR3Eh0f7n2FQvP6cR4LjA=;
	h=To:Subject:From:Date:From;
	b=cXq8i3Zz60db5ZraMBtBotSVmyn2breoTEBZ1FfVs8VNiHhGtdHd8ljNi2eF8tD08
	 NEivy/1QiSOQPTYiFgx9gR3XWcCZlSwtqn+G6/RPDNgn+A/FyeE6MJHJu7j636uVl8
	 t7OUbor7tkMKH762qMrYQ0WVB48X2u5k/2sx2d8javR0Pz9wSORNSD64Zboy9xIBd5
	 5y5eVPp//mWJ/36DSYYdpPnflzmof853MM1WR0aW6mXjfbs4LQLNBp8hAoKPxuqFec
	 0AwdO4dubIoM9QVGzJvvKWtzX13R/LCqvWQBt/6D3VvlBcw/cdZ+D+n60FAj+/lUmM
	 i2HP8xDlSLnZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64604C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166611305340.16789.15878037296586888937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c439503a8dc2b9bb87769622273d9e49d00def8d82834faad6c959c398a260f
Date: Tue, 18 Oct 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666113053
