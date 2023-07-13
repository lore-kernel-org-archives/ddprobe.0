Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641EA100B5
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 10:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5082C433C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 10:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689245948;
	bh=Z4pYxlwryWkuS3qBA/srO1XOEO2qqhEYCy4z5mOEKu0=;
	h=To:Subject:From:Date:From;
	b=RI36x4gUtVpfEH/nlMgfo4EYy1GSTIMH0A8ZEbnHJlu5IjgYfTaC1dgswp+xmZ3dt
	 FtZUjd3rvebStyZIUtJhH1/mgEDJqRZho1mBC+e3s0IAwKKH/i8Y9xDIllnTVaiXGL
	 Ou7QtlNI/WUwFTbDoaAPFo1V0JU2tCfDkoXbakXZFsoF/Zd3oiYWrnrdFI2iwHMyTg
	 qZha9BBrc4BRZWdzrS3uY+WlxMREp0uWEom8wlpnkbbGY8ryM3JqV4Mz5jJmRuigcp
	 zzgk5YBQWUrONQwIOyYJNuEjKjsvscJZTyPvnRU6vbj2h4TOToFQFDRvAPWLf00Jsz
	 SvGtZMp9eW7jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3A5C001DC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 10:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168924594869.16446.11323385966170894437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6cd947ab24bb86bf61179a648eebbd093cf6261245a54c9556bef193dc6a03
Date: Thu, 13 Jul 2023 10:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689245948
