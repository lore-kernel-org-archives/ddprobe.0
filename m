Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384C323A8
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 07:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E84C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 07:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674804785;
	bh=xDG8LJyJeGXpOKw1sil2IWTP80P4nsaHOFnovxxTp3Y=;
	h=To:Subject:From:Date:From;
	b=dnXtJ0HJERfKavK+rvofBixKq8RPBzkfdtfT7dnwxJ5SFkp9U1SIum9DpFa7rPqRW
	 pqgujhflc4H+XB3zKzf+1J/8qya3uui67z2DRE/ur04DgCYGht0eHJ5XKPkgPlRYEi
	 al6AA+WXGjxQwzuzHd1XbqKxqFetNJzeuHYOkJwHcycoWNm73D4KDgVWv93DS3lraZ
	 ECgrAFrwK2LBpXu90YoI8o0Fz2OPr1JlxHGvXFz4g8pH5JWL+6OU9eIX6tVJwMtwpN
	 d0Qyey0pk+q85aZpB0mHB5XSgD72jM5q+RjeZ2dGn/u7JAKtH/Cwa1PD1d5vO9oWuL
	 1izyc8YF68MuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF659C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 07:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167480478577.23999.17188272980030845942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b63445eb56ab790f7c25f5c0d27fc3a15a7791013746485ed1c86c1ccaf403
Date: Fri, 27 Jan 2023 07:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674804785
