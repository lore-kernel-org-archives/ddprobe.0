Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B94E617D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EAA8C433B5
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666334453;
	bh=7wGzjLe+aNbjdmtWsgq4Bvz4ZMYvqQPPJePyWCGNYC8=;
	h=To:Subject:From:Date:From;
	b=Wa45iaqoNdRxsYw0LcF9u7F7FDazValgLoOw9oWd7VoFVD5g1tCYe0kvg3bOixzIm
	 yOd5v2jiXYl4xpVg63D8TA4e6p/OfBLo/ll4/78XJG3JAuCTkTsHjgAvoBRM4bGdOj
	 WBlLRUOXPIQWWwfjDAQn1d4/VVIqLkj5tcd1bCk9LWgr7KLacy+SP7/7/nTRKKb2pL
	 EoMjQsvTmEC+YJxK4oubrs97OZc3gcumkiH6dIEM0szBlSqRlMTyzDIsFY1ICjmJEA
	 r6QQ1EGVa/g1j4PTC5oTdbrhtAebZ/9V55mkMSol8NYfnRSAPImBvFbE3F3DvrETO3
	 L9PbMwdFMNGPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57426C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166633445335.25303.1701030164460037434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1157d631153c4e05cfc68106e0e789d717610ad30c9b616c4671639ec6a8b388
Date: Fri, 21 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666334453
