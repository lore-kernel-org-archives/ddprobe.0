Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBF8A28
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70D69C433D7
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669859454;
	bh=ZO/b8VbFjWzeHj7kzbsa7jtkl+PDf8j5z2UvYD8mwRI=;
	h=To:Subject:From:Date:From;
	b=MvSgmvxQyphVcrLeD120pgEQ73vGOqcLDiHShXS6m0+yUj81Wsdq770I7p0fySmWp
	 Z/YnftHqGdX0d25ppRLKWxXbjAvFazHJYhIYpSlPAeI5Zg8Hhh/rZBbSAmbQ+XfPsZ
	 Cat3J3vCSziDuSv03l0q94qUWuP7VHSQSPpFiU3Xe9PeJarbjuM+d+73MSJHbB30zK
	 nIrvNqiyKAvVDCp2d6FMH+ocdHtmBsvrOOMRv0B/DV87PGkEOmfL1D1RKRKXS3C17Y
	 6wc8iarO44oUcIXdsplEpiW+gTduoMu5FtKYD2bktUdt8j1ZUubJhbydBlwKL3IgK+
	 0C0qOIBQ3H0pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56964C352A1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166985945434.9621.7995936239683738353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b879891e431ef7738b98a76ddb7d5bc35f25d9b6a3fc759b141f70349c164c8
Date: Thu, 01 Dec 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669859454
