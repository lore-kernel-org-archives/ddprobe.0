Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1A5318133
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755167995; cv=none; b=WfHC+0S9QZlrVGvPM0Bhpkv2aTg+xZhGPmAYujFRxg+wvBOGc3DN5ADLaFYIf3dJ91Fg2OnbTeap6m0hEFnPKodRq1zvsaIOW/Ikcpbsl4b72MYO7dL3XfZWpSQHpS3yhvAciic9dxR/hYFSFxk/r3gUiNs5ZUF9A4SGdXV+AOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755167995; c=relaxed/simple;
	bh=N4txxdUNQFMPOvAQmoMrZwdvHDVG5b4b5FnyHCG7EUQ=;
	h=To:Subject:From:Message-Id:Date; b=fz6OEchN2Ja1oJj4nNSW5ZwWiCTIDO2ffDD63dTTnzccKO3T/1u+ywEsMEz6zHEBDAjpQ+dOsZOi+awFu0C6QUyY5O4GkP/DLe+PDjS0A8NxsFyuIW8AXJBriQesaZc31BSxem6NQkpu+qOvE/NLSdgSVJV85nrtpRcMtQAhFtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcpxEQec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcpxEQec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A063EC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755167993;
	bh=N4txxdUNQFMPOvAQmoMrZwdvHDVG5b4b5FnyHCG7EUQ=;
	h=To:Subject:From:Date:From;
	b=VcpxEQecLUMeyanao4QvD88VtqydU+5X2/UDO5xpPITlAu8S+4eXBJ1cwXlQvGwy0
	 OpUDWCPmfCXK59olyG1wfkaJHWocaCifaf+rP/JNXTAqElZqpn6F47nBv7JrB2ektr
	 AqdL20ZUIkkLpC6WVPvbglEhHLXObvRARKdjO4h91DErntNXZpZXoA5k/Z5nEbdCA8
	 71LZ0Rjs66Ot4VUUfcjpAIAYAmuHwWPiqSHwtYJIkp6wAjE6bwPQWNmUGwFILwzRjZ
	 fiGJa5rZ7r6KpLU+M2LgqsW3r9YZMj4naGruxRt3RoN4WlQWkNuq5yrClnv8PpzSpd
	 5whbw/y91xFvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F69BCA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516799357.6734.13251170922762104142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa76e7720aa08126d9fc90a877ede60e37384b22c562da87b29e28a556351183
Date: Thu, 14 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755167993
