Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21565365
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 00:12:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC797C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 00:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674346325;
	bh=D1Pd5N9dV6SHV4cPehlkRkiFU2l8E9kUGy+uOh3cgdc=;
	h=To:Subject:From:Date:From;
	b=BMVJXq3iKpg16EdA4k8+kn04ZwduCpTJTUgvCDn+T6Ls48NCJMMnVZEwt/FBUo3hW
	 11qTwGwMuZjF1fXdCiW7PiXErY6fYLUC2kvh2o7pQ2895y7k3QVSdzdykRVimZaZMG
	 Vs+gsgvqX+ZJYa74GhMAcoyuiLjiun2miOXVuGFGxD8jqsC2rFNhsTw0+7YiU6natE
	 Hx+fdsnqlQ2L5pwUJXpUs5ogc32mZ9pkA8Cco1Red42EZ0z37nI7Aye+wYjXSUDBip
	 IuAHPixqBVou3i0iGPvKjQLhl1MBXisS6gFDk15F/WV2AtpleXxejyA23VqDCLhc3W
	 SfFkM+SwfVZ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BEFC38142
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 00:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167434632573.19400.4522835277598934366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19b34d8836a4ba1c7bce06ac5749cf6f09a3d31bf9ad2d1627343afacc646b3f
Date: Sun, 22 Jan 2023 00:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674346325
