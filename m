Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D30B210EC
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BB1EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671492087;
	bh=Btz10CHcs/rvDYItoySYXes/vInj6xJhuZygMEtXU+Q=;
	h=To:Subject:From:Date:From;
	b=h7ftWiuKHOdn7sZsSOE909QrKF8+9jnsWl7DOva0Iiq+Jzi9E3MyVc9fZW/tsmf2F
	 FrZfmJOG6xkLiVRYZD0Atz/vg5yLKJ3kb8yaoP9/dsebBQza5y+rzc2Tq8egKkpVP9
	 bSevzMVVPqj4wlcn9Jlg/PBrzzyT1FWCjnmYIbkwjGtS7Q0xwOKvndfDZQdM3GFVHL
	 cK49uMMXiKF3E2i+7KnlUkESDhXbUiNWlXK0FeFyMciE4tg9+KSVWY8fD7EyBxYexR
	 wPkhv/cFwr6yZL94o3xHrzpWhPj/5SfSZ7QsfNPSSFOVmaPPtyysnilWJcHqmkD77N
	 mJ7v5uLkFwdkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F8E3C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149208738.9587.16216296666617407740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98375fafc2abb4a904f9ec7d2a05ef738c648efca31bb4d136717288ee2999ab
Date: Mon, 19 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671492087
