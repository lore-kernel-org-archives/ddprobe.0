Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7157B
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64217C433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663056653;
	bh=b1FmouPsKJAbotFbzdjeQIBgt8eHcaHX6xiESmkN+DY=;
	h=To:Subject:From:Date:From;
	b=Iggou4I9E2BCLHTdfmliCpyEhQn0SghMKeFXQB2WKeBundnay/W9uCx1lJ4EnjSwr
	 Mb9c+Tdju3AY6esm92y6EqVZfdY29p2U7SR3+E4AZ8wseuByOiLA3M1iou5oY7zSvy
	 yrsUSbkKZUyeldn6emawAlJ3Fbdjl2MBmwJiAYHBpH5hT7Ng/LSI5ap34qhLyvy5B5
	 OS5+As1Iz0BY1X6p1Vk1Npy6PMd427GSwDv1Le5i8n9J57rxGT2eClP2zamTFNjvH6
	 5oXj2IDwBuhK9sYjkjtDpICNB9IQTNDufcEzU1oaWiaE9uButcg/dmJKej6qogJPAk
	 d6Y1jbNE2p6Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD77C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166305665332.32345.7262005131161952281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4169f55b0bbeeeb66a9a040824bedfa565c0685bb9a773c125eaf7c57744dcf
Date: Tue, 13 Sep 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663056653
