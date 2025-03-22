Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A74324B26
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742614794; cv=none; b=Ta+qwrIcD9x3pmHi0sL2oQDGVWVxKJ+33GYOApZ9Pm7ydPXSRl2+fWfnVCA2mUFl3oqt1OCfZwxBlHS+zfmIWKHOTNIaNF34ULSfHFL4Ds3w+rwWs/YrYWunABYVoW1+Lr0wZpBmjLCO22/z3KtlEMJE5030NS4ijUhV+2CBn3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742614794; c=relaxed/simple;
	bh=ey4J7pzvHWFyTH6JBEC/FeBlz3VagTbHbao9TQUhS1Q=;
	h=To:Subject:From:Message-Id:Date; b=O6bvd7m/484jIuSnHzd2gyP7MUzimYVuHaDVN9uMmcoZ0+hIswTblis/3+UB42ps7UUjAiHhGFAl5ALWUISQ/vGeFs8kSToWlRr2TjJ0LwJHceBPx+fJT+h7gU2uArZSap0cq3iJVnrLD6MjZj43eFA5rxMpZTJEg4HrOQWHrbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJyQa+pt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJyQa+pt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0E4C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742614793;
	bh=ey4J7pzvHWFyTH6JBEC/FeBlz3VagTbHbao9TQUhS1Q=;
	h=To:Subject:From:Date:From;
	b=MJyQa+pt6e6oqKeoCZKe6ymFidlZHwHZxXRwVsLjWlPHnmRP7mX1STTM6dkTsc4W5
	 Yev7qI8JDBVYz/vVXnoNG8LANhq91Y/VAeYI6evfj8hlY33DqVPM7oMgwq9NV+eud9
	 qmpbwPjThXd3MqgtMyNNAGRhuLYrQLvX1J0o0Vj7TxgB7gnDmP4gXxOVaLoP2X3mWM
	 dYzI9UBSRmfYYiwg0LljtOLA2wdDtzoF186L8s7aonLF/V1FlV951uOBzEl5nFltDO
	 od7tBhuOT8t8UZ1NdYS+4PJBrMjW8sMpSS8vIgPxoVq28e0LsNTI6ZtbTjKCtwYYnd
	 lTw5Oyw69t0AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC5C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174261479358.32655.9935406877193682098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1abda12b170856f86790c61310437d34f291a33592468566ad0e5e80b54704ad
Date: Sat, 22 Mar 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742614793
