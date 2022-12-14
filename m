Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD94AD51
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CC90C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671052287;
	bh=G8q1VZAcC/Wp7LKdi0zLRbX/Va4ysB12w7ldFSUpXOg=;
	h=To:Subject:From:Date:From;
	b=IYiDUVD91HLU8ODNY8whotmfHJbyL001XghoeClKTRWEknEPK69p8hRQhyiy7MFLj
	 0CQ+Yvk9LL/30uMtXoqy6CiIMOUpUz++NiG7MDsUvxJ48V0JsMXQEkj5d3MauUAplu
	 YtaeDYmUzvAVpGdYdKjs62P9uhtsytok/ry9vTtJZ9Je1jLH9CvSV/A1kICEewGL/Z
	 Ue+37g/g9fjnRD8ePna4XTPgM8aFH1J8RJMCtPn3HucFK6f+vEUnbHWqndZ8lyWocN
	 Fj3CYSqrsChhvHq7MmPuUxdY9DpH695X/Yvmn2n2royLTiOA1iFHoFFfw5nrrsA1G7
	 uZg+8ue0F+24w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6042CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167105228738.12396.9438964296199624946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632447d9a886a14cf0b992b70b6e818227cdfd4648ac98298eb5a696987ac979
Date: Wed, 14 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671052287
