Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F22F40DFA1
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776748654; cv=none; b=B3UIViF0r+r+e3qume0x2F8mbP2aCPPhpe6fECnu+06q2B98EHvk9tkskeho6qSibiSoI05cZ6YlZeKQS8S6ijAmmrdwc+rSVClxrJK0d38cOnCl4lHKx1li088Z++eQrh6d7VtDJStvMFYxhGb3bfmQ00fmtP5Ohou61Bx2j7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776748654; c=relaxed/simple;
	bh=YyWfhn4ZUU6WiOVq/TSrWvYV1NvTmyPhBcIogLxQk9M=;
	h=To:Subject:From:Message-Id:Date; b=Vm2g6Pa10ue1s3cPWJeojY7fuk0pQSNhkSzowr8GvvqGLboA2PA1+OmBvLVvCSgJtmYQKbvXk+z/SX8fRDp90Ap3/AVbhYQzc5UV6b3BR9LvN7Og2YsZKlLzQwiuwq1sJk1itVHN3TF3/hNPGrqPud/jwItTPghmeARI0V6pW8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIYX1Gef; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIYX1Gef"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCD77C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776748653;
	bh=YyWfhn4ZUU6WiOVq/TSrWvYV1NvTmyPhBcIogLxQk9M=;
	h=To:Subject:From:Date:From;
	b=IIYX1GefEqmBKV+78vt4YiuJZ8qQ/dxfb1Omqw+RjEGo7t0zZJyWh7nd95kob4T3d
	 kmuQwqXnRJMyanWe4ikgpatzC1c22NdriuhxUjxzXba0h9QS/3qB2odwZJL+MYLcMr
	 kBPm8vKrlYlvOd+kMiN8NBH9KWhEC2hvais/ghVSX7t4SWeFJgZvYA0lYG6Ie+A6sq
	 gryXFDebJ1PMRJJFw8EYBcmMNVCZ3ZFTwTgcpVEaUWWNhoygPe6AF/kZpdUFXMfyO0
	 KhjKb4qYvkME72IUryJFMcquVO9PEldt9DQrn7OpV41yNVDWYaRuW/CpV8qSEaQTa2
	 n+2JhI81FwJeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3C4EA71A4
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674865368.14981.1636500282918387475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec63d9212f97fb2d8b4e0aca439de5273d86ca2e6dd963e4986beea79dfad25
Date: Tue, 21 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776748653
