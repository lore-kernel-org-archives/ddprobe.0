Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1381F1FBB
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 10:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A5DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 10:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675161785;
	bh=ymgHP3QSVy1mapSEoQEJ1sEbWVP37snFvEOH3/8UsAk=;
	h=To:Subject:From:Date:From;
	b=p7kfcJchkRt1lgODyePO6UvYjuUYb1npckA5T8ZrExCsKOBNXCgoX1UfmSXzM0lCj
	 DV4OMZX+578rtbQO7/I0aAVocTluPtxIJxArOcjDOKy1s2BP8Kf8wet1KbmHs5a9fy
	 wbHK5Vn2XrXgL1oGUoDYO5kyCA8XAdPyO7sXsZVcybAG2L90Lc76Q9kxKmnfCkjzfF
	 0QFbMjmHVLhkzO+Mde7VVlRcOIwW8wRAo6l5bO4VWAKfhLXkD6C71aTfQAjc4kr2AX
	 xiK648jZal2JlCAzzWf1dI7mUYEk2smr8RAYHaln21BmNo6oLK0GmhGbL6RxTc6xa1
	 oUzb/hJZqD/Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78A0C38142
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 10:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167516178574.454.14549183174011508538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c7c7124e603a474f7d3834f85c7f7df2ce561d73f8d4d47fe4abfdee9921ef
Date: Tue, 31 Jan 2023 10:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675161785
