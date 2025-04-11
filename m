Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA868158524
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744382993; cv=none; b=b/MQmwZPe6jK16Kr7YrrhCS6/wVCP+pomBY/iC6RPKd5acwbJW2x+/r4cvILLevuWQENvJvAs5zQunbtTKAGD+O8lJIb78YSZIwmauOCxKVTyhhPd7SQe8gGpEgI0N84WodcUXB7hrkguclYtn4jM++uxtKVbZt7uN2ZAKUB5cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744382993; c=relaxed/simple;
	bh=WFxvTfcm1ys0iBT48/NTS2HFd2oAfQIJAQcRtwz0biY=;
	h=To:Subject:From:Message-Id:Date; b=t99FWBy+b7IPPAXfEQX0Cp/f5GlzFQ2R///lTdRAg8ttPwCwFzIzJ1B9I5UIgz1jGI4YVY6qPcIzfwSiIi+2UNmxbkMViA1s0N5U+lZDRJGcOUnVwpGV/nvm5LM96ELkF1C54/mU7G6lnL9rHSfb9oPTDHvzhKMIfqDqqaH9duE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b+oM5zC1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+oM5zC1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BECC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744382993;
	bh=WFxvTfcm1ys0iBT48/NTS2HFd2oAfQIJAQcRtwz0biY=;
	h=To:Subject:From:Date:From;
	b=b+oM5zC1D/vEqGDVXfadB90nmmq+NncYsTFVlMpv/gtYHxlKDVaQ7YuXrb816+pf1
	 GZ6eCXA/e8wSg9Rs6Ocm2TbMRgaWFZoFT0SrZN79+HtEw4mEudLs6TMlEOn/lsVhzn
	 rf6uBxqJBdyTjgZuDL7OKCElBw5LHb+g6fd0dLBt7e2jhRMFQK5tZTsc92LgP9YkcX
	 PHGMY3w6e2NQJ6lMzo5yRtYkE3Y9XyB45OFVgmewjy59cYr7q3Uk3/2H7zaRJW4CMF
	 tfXJbaD4QNL1KFgEgs6D44xTnUUdoKAf4XpebaB+/LjD06qDbfZ9A5iFttcyIA2gkg
	 xT+WcNOq1/NoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9953CC369AE
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174438299361.12008.9653218955027782250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efdd8111bb73f2703259fd33126b9f52bf18577f14b118aed3346c0686e2c843
Date: Fri, 11 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744382993
