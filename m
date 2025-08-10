Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F4F18C933
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754850595; cv=none; b=dLylHeMOjv+FPtk0UaJRXhh2nZn1DLxkoADwxgzR7gNjnaSRNECfNoejszL0pWxp1vI/8B7hxn0E7nA9TYiEbEN1Ll8d+1vLV2wEBxH2FafvZ5tKkya7wXJES9SJH60Ju4GysO4SfCJu1i4pRhr1nHfYO6CAZyY1Io1urbjvQVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754850595; c=relaxed/simple;
	bh=bURmWYsPkmZeSia+BD3ZjcqWNh03370Mj7inXIn6rSo=;
	h=To:Subject:From:Message-Id:Date; b=YqpWZeW/43hC+w5mmggh+0MZeCjBUwNxiWN4foHgX/Uq7vAj2E15FAA4shU8xiBp9wn4HxGuGygiF2IORqcrTQQwR4wW0UgfU/ccmLuNHKNTV4HhjcNMo3A23vqyMrHfjKFGUs4iUfG9Ckygq9xyWPwPUEyw3ZGVogg9B1b+iLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gaDRMUoH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gaDRMUoH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A020EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754850593;
	bh=bURmWYsPkmZeSia+BD3ZjcqWNh03370Mj7inXIn6rSo=;
	h=To:Subject:From:Date:From;
	b=gaDRMUoHhzJpvfRO2Sl7rRLiNqzTRbJEzj878bBcL2hES3t3R5Vxds7gj9LtNkUjd
	 DmldMOFkcICE3ezF5XWm0wGGFszdJqPzCYwUWlwio8D8hiSe+hdFy/mxWxvQbf/Epr
	 6YF9aTPDZRQi6mQK0TwapL0ObFDWnR+iMHDxu4Rq32GBM1wT2d7iL4nvtotzp+OjiU
	 qs9753TzDJdaN9DwkRmVBInh5FbOS/B/SzKj8yAkxuK3RNyTXyOrOJCJ5AuV9+Pf3o
	 w0J/otur3kZoZok0eFbbW+5vCzIT4RGg7FZ8Ny5GQZocTkGFWgy3HRXDPcQhCvQZYH
	 KsiCJrq5P6+aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5FEC87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175485059357.12069.10072199705216095684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a54a1812feed3625fec2125f69494968f241d72ec73c3228691a76d3eb3951
Date: Sun, 10 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754850593
