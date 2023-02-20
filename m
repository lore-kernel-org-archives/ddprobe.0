Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B23882E
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 21:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF036C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 21:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676930346;
	bh=vYZHUxTptfk+1LLPLD+jUf2BBl+oIBsfSj6IBnM78h0=;
	h=To:Subject:From:Date:From;
	b=A/Z9t4RSrJ7QdD0+iDFWtMfNu4vzEZWecWWrivvt7dgZ80Ix7e8Fxq4rDdBeicxr7
	 vb0CczefEgPRSgtjwdQI7/8Ev+9aaHsRER2B3bu0UKPm2oS3WhABYkHaa2hPVyAi2k
	 8/YfTcQco/ghPwSZFpRz1NZEDk3nLwVj8fDyd1MmF/3dtveuAm1DwEPkYoYsBLIKmv
	 0upsWFvQQQpYcYFMlsG5Dp4iOFwrVpX/73BMyIwUWSfE2sCSlBrxeQw1kyqElSxnSZ
	 aEkBkqoyVAMhGloV6JPUsm7H9RjMh2hfyhCU/IDEpTyaGuLb8EoiHV5xyiGs4TDBU4
	 b6D8LXCH85J9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D07F2C636D6
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 21:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167693034583.29795.15778921344488278067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1824ba58698294b36c5d7acd421320f37d35f3121417cae10c8e1ca73569ddaf
Date: Mon, 20 Feb 2023 21:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676930345
