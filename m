Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0939E160
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5979C433EF
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671063087;
	bh=GBmdh9+9ebeUAp5Lhd6kSSmkIfOEV11G+kudkgF2t24=;
	h=To:Subject:From:Date:From;
	b=KLdfe4IxrFW0If+baahGP4rT6UjfhEMfEE1ebdg5cZQutCuzzQMmMNk/ftSie6f8I
	 fmh1XsBYQke6c+dfV7fDjixR+EJRFZt1Vy1AxPbh47xO+71shDGVHnJMwwWt0sffQI
	 8KNlwBloZjYsE/yaXjuf8pwSO1GMmPfaJr+cq97emKallAHa6gPVgk7LfyITpHFyVW
	 7W6ODBRBNVOGUyPGz9UbyGh+JD8NYRbNC/UP8AxUWeFIRgwcBLZiPlWnEXd8wibabK
	 kMnyR35pExEgZalK3XeU+py0LtxlfyTJrlhQIUxVwgoIsbCQGqm4aOLTp9I27fOjLx
	 n7TemmV/KLLqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B492C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167106308747.11095.12556286799264542823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6374e6f605c2529381f45eeac1e4ed5b00f0dc6e76c4a94421b8af086b1cc1
Date: Thu, 15 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671063087
