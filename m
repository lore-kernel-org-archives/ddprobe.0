Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7250037B
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 00:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCCBBC433C8
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 00:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691628788;
	bh=aBi1owhmGYHGgNho5vt11KfFhEWTJSYxmOWJ4dspvQA=;
	h=To:Subject:From:Date:From;
	b=FWQa4cnPgB5POMm5hlyyjDwTcFNR+Dar9PTov69TQfe8oJeAozO+SX2tpp3lBTuJk
	 CwlGUWzlMQAyJUDHLeou2haEVxJ7XZuS8a2ZXHvLhAUMdFadFgor6aV5fEG9B0YcoN
	 GSYe2CBCh+23RmJXNnd1y0kcAsVaqI6EvEfa6oZmyN8ATOJK2iyHnzfVMOMFbxy3Bu
	 C6XGVJbN6zi/QfUtPEX7vjs49VQ8aR7PV+HCjetXz5PmAEjT4+qKSn7MPTzUPbtsWv
	 tqydMacmcFm1fmze6SvaVFA/2muw1GNUzTqmlpkZKhK7pvxLUY/t/JvyqYLGZHYZ+7
	 C+csNg6cex5TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF45C0015E
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 00:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169162878874.14339.10897990073142475127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30528b4b98b7c9786c5bbdd00813032120abc91c314d9c9e5260b16f3c67fc03
Date: Thu, 10 Aug 2023 00:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691628788
