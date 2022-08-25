Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61A11113
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 09:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BC1FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 09:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661418652;
	bh=BBpb3fyKprYuYjevPd6z6upd8O8+iJRwo10h/rztY9s=;
	h=To:Subject:From:Date:From;
	b=RNSjNuBih+LZcIbiLIu5cvVAsNxOb6YpmJEYghYK0aMehwsFZL2tCMAaYG0xa2Rkq
	 YxHcxnnFyKpRqvyfRYqlY6kDIHm5ZmofNaCPAG24bKIQcwk+Ud91MOaqLhIkdqetLW
	 DUKoPVsO6wFJv00+fyO5AHfbJ3K32cfFzmfresLXliXWHDZJzuu7eNLUQI72bAvZxp
	 y+N0qE9MXiCgEOEmYUBs8wxH/K+lizbAGuYR6s3YI7TTXDMfVqAYSw9EXXsndG4y3K
	 Ne12RUVUHE3TuOTzyb2wLiqwRkb47ndA5i/ZFdtOs4S7dl1p9Aux007QGYTAtT8Xnc
	 hJaPwg8iyJLOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5223DC04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 09:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166141865232.4475.16875955716469894219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43de1d2147cbd4f4408e3480011d3ed3d576ef58beeb69c920771aef02888ade
Date: Thu, 25 Aug 2022 09:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661418652
