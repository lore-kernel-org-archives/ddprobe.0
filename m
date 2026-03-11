Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098F3345CDD
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773254694; cv=none; b=G9z6FW5uqpH8rW6HU8WdoXWP01OH1vHXarAmYylBrR/KCrtEfYjjVOcrLYiPTMZdzWM/KpNzP3vd5h1e/FAaGXdKiAv1YjmdBkr8tNw32Bf/PKWKwVSbE3hqhdfvOR5cW9SzqLq93/98IhXclzZdVuxwXfUvexAh9IlSfjYWkKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773254694; c=relaxed/simple;
	bh=QDTfArl1EPQaIavYaLn4AQaaGNPEQhYOCSETPaxY3vU=;
	h=To:Subject:From:Message-Id:Date; b=p/R38DzBmiiiPDi1ONf36RlQdN/H+0MRzwqYf1inS8vpu+rJCYPnHEPIQMEidDpwYDujTDvtWW+i6IcJB7J6mtlGadWgGejM00QvQeHzITX1i0uYfabfGODhOjuopQDzW6DpwSp4Glxb6yA9VjMUmhUziHwrwfAs6NszYwRQbEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rcsX+4Ol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rcsX+4Ol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1418C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773254693;
	bh=QDTfArl1EPQaIavYaLn4AQaaGNPEQhYOCSETPaxY3vU=;
	h=To:Subject:From:Date:From;
	b=rcsX+4Olt7lKVnC2QoE6qUIttXEb4EWMG39VsS9U9C/DY9aI5Aoi4umxGNJ4tfkx0
	 bUdsfO5K2ChBzZb1Vhlgo26BAfQlaR3tcH2sQC4wLAJtIkAxPQ13l9Ie/X4F1W8+HM
	 SO+z8VOFVrhbwHppF9F729R5rlYQFldt3RCc7bS8aE6pIyFWwVy/bV3ueXTz4k+2/A
	 HLzqrBB0FyageteSn6R2ZV13fjMiyGZ7S2W18ZRVURfoKP+ad+mhZkbA0Py3bGQ3N6
	 6CgLHSLm0w8XCTVl7Oy12Rpur2jnZ9djrByXWCZ0WrsyFjKOOHSzPcAYMFTnPIIc6h
	 FBdyFxzABw6hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B5F112585A
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325469360.27618.14957743481438215433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff854a0604eab7a110d5f420c56af5845d7c3357d569f59884ef282057e17fc
Date: Wed, 11 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773254693
