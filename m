Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E8513B2A4
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745988594; cv=none; b=PCVPW7nLu4yBQik+2PoVP4rMLCL+fg1I8xly+oh46dhPzuZY54o8+aiKe/twbh8/NUP+b/D3MD6PMUXCuZBA9rimXevdyHHo+nwCYF0I8ZcAgz8wsz5TMykLWe0isbk4vNyCznHppb8EHMXyzBIKh4rzTZAX9+SXbdFxm5nol84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745988594; c=relaxed/simple;
	bh=NjuoEifoE1vHz2uihUBpEOXqQdveSi4bRdQsHkMSQcE=;
	h=To:Subject:From:Message-Id:Date; b=IXsxPMX3ymZvjw7AFqfMw5iGTNT++Xfl13NKMAz9UFBAzZbPjfSDXYCbkaQEStlvSMnEwTBgtyHfXjf7MkjLY5+kzpeArq4gyigkizqiDsrYDs1BcxleBRyT8EySylBUVSvn6FiY6eMyG+2bc70W0xoqWj2BlEWfwgUyUsSWkPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EH8lzkZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EH8lzkZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF2BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745988593;
	bh=NjuoEifoE1vHz2uihUBpEOXqQdveSi4bRdQsHkMSQcE=;
	h=To:Subject:From:Date:From;
	b=EH8lzkZ1wf3TW7rwcmDqJTufwCJtotbdyfQRADlw5yUzE/eK/g4kMrqu8vg9tFQ1f
	 XyNiKFYwEp70eHId4QEwcPPob1Y9XZSy83CqYI6NtwqVjfKItgYLJ3I17LKxbA3xKA
	 01K/yOaxZ6U/mdUUZ0T8LoHgXg/0MZF3WAOc76sBgOik8EC8DazbcJW0kSPnInEpc5
	 RKMI4EIv/FJ0b1Lrwj0VPE51GdgLhtGxnvC9Zadgl3qbWg4HI0e9XgXEaR40jkCYgL
	 67TxCOwB49enIVaDSanJ40drcZ5BT+ZKCKyG4QYfZpQOtO7NuSzIMknxJ/L8ZKVcx7
	 76GiNy7Cmypsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEBC3ABAA
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174598859357.6766.5863544334054830641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 955aa949915cf542b9ba3ab4164581b6ed7831a6e271823cdd2be4983195a354
Date: Wed, 30 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745988593
