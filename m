Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA5F1859
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 12:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E347CC433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 12:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680957665;
	bh=Rk0i0Ltj1IO2jqdJtsKyASONsC0vhYuAZVEqBKoFNCw=;
	h=To:Subject:From:Date:From;
	b=bwzruzW6y35loc4AhvQqXHcAlP+170ljNG6aDYfKGSyLlo974YFF/IynmJIdIYlul
	 pI6GB7ECtFAUfnM4smdtWMUBrbpKyxEhAJSRIc8KdgvnLjpYfdF4uKej3Zi5/SMMFJ
	 NEr/CoWmBuG8eNd1w6NtbUJ7pm0q2S8lzjhWD/v8OgN0vi3PIvCGO/q3KmZsFMBWub
	 cs1/O8BEoY4i0bpMgLVA8Ku8xyaBYWpXNNEuEcnP6K0DCVk/5L7tvhWQ7Qx65Q0agY
	 Yql+7zxN8ObX7NDotdhrM4lc09PtCrPPQM1KcZsJn0k2SOv1ih2twPPLOKiFAkE59M
	 mSpednzGZn44g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5B2C7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 12:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168095766577.31302.3383912725292520280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30abd670a74dd8d0e1e5a8474ef325190d51e74b6fde944aeef64d9dc32fec1e
Date: Sat, 08 Apr 2023 12:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680957665
