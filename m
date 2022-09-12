Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B2F7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 693BCC433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662960653;
	bh=ioUXLUVtyE2O+HyQZ8FUHGPID8NuS0YTRRADjTAjRCs=;
	h=To:Subject:From:Date:From;
	b=eCd+WXYxma0YMEgGgwCgKmidhxOsMSmhSKuD1IMfMqHtSz/X/ysaO9AZOchVf72cb
	 E5hJsNPcYs/Wj14zX+6+rAl2Sf3pXU/kE9802KUCAVtOWjo/WZmhB8H4ZINJdc4gGE
	 8RCJUmEU0GdnEGXyXHpuB7c0v3L9ikCP/0JMPvLumnIOj3BHrnVbHKvLdfapYQ5mW4
	 a1rbq2hWH9AOZtBEuIoccThk4WUPZlSJ8j81+TynR6bcWdWEshtjmtYqPAcOoodK6T
	 A2VIIRoWSak1A2Bxv86lzq1+RnyuVX6z5QSHlDgo6kIepxgb4QKMhaEOYRi0uA8gEM
	 6rP2Ati6p9w/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5473CECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166296065333.29916.18267967306898694236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e936ea96b9412e69b4aeb9ee9cbedc85b67edb3e54fe0572cd446b11979bc6
Date: Mon, 12 Sep 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662960653
