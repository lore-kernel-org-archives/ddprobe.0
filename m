Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE0EF7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72840C433D6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667532054;
	bh=0itqzY5FHRr9exzST7YHrmnhk+Nj7GEZsYy5NjI2vDA=;
	h=To:Subject:From:Date:From;
	b=Sua47tIANcDaoFN/aoo13w58QrK0KU5jtcc6ITjEVqjtGn4Nh6f+N5igFF06i/wl1
	 Jni6BD8JLqv8m381krQ7aQHmjwWuYmzfyUi1K/PYLREjGNu5ThoP/EVMwW1bUzkPYF
	 sfnWyOP66d5Ykc6W/Kvweskf16fP/My+Z5FOO4zWN+NJS41OI3L/Z02+lPmWXnjLls
	 pKR/FH7vHoGls5eQCb/OHmGnLgah1fszviauE4f+B/wq3w4GVKBI4lLYd3Qk3iGIL7
	 c2I4zYkJkieW+tcGYiexP9hQsMe5JoAMrdmDAHOECPbyLJeWONi2LkKQUaMkIHosN/
	 uoedLbOGAC+SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FE2C433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166753205434.21585.18210541983026371759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5843d076ec5ca64e1a418a86f4d5060c9cec23c6893137af173cd58db677d1f4
Date: Fri, 04 Nov 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667532054
