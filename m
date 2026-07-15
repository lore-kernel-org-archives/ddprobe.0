Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FE62313E17
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784142516; cv=none; b=kEjHkk+2olRun292y6ORnFkhBDWWVpp6q/kc9PPFmpLQKfmbXdkyciTAy47TCNdv4zrVQPqVNF/5Uomzf0aE5UGw3tUNSkTHT4mDuozNN43Dv5VkLFzD6n65RfG5CSeapwTBsPg52996OpqwTsSUpyaR0qIi0FeIaZiOzRrIrfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784142516; c=relaxed/simple;
	bh=Tl/z+UPvKpGAv3M0y6Y9jNaaOE3Z/k1gwNLD0wZ4olA=;
	h=To:Subject:From:Message-Id:Date; b=diAhRfKiIi2i3NkOY9eLfQqpzvM0iSVv6C+roN0UV7YbULuVHfopNtolDrrYeX+iGCqcXMQ6E5Iictj7yJ2AqdZP7r7Ed0BmykYY4XzFM+V1VR+4COdkyzUWNE+d/Zxf7x9u2uZUDl4hopdPU36gV+KLNxA6zpFzrJCrUeRxblA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiRZ0eJv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiRZ0eJv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBC98C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784142514;
	bh=Tl/z+UPvKpGAv3M0y6Y9jNaaOE3Z/k1gwNLD0wZ4olA=;
	h=To:Subject:From:Date:From;
	b=HiRZ0eJvsr1lObdHd6FBFsHGg8QkldnPUVLWqpfbhidYkAs+W3dh52Oy4yLqZgZc0
	 u7kDL7KEtZYU69WJrnIBcD42lwl1oRQ8uXfRJp4KQIsT8pBIcEvS5XtF0dcKaPK9cF
	 S8HURpXuvtPhcv0r4yfkDJor5AArgo/5Y8K1E7X2NjEsHf3qbwOvoDYbfJKaxOc3C8
	 xLVJ1PR/QP2lvCVAHGonckwx6KFF+kZdeksgXqQvIwMMwWbNRBgkJPufakfgx4mq2a
	 Z+ImQgJMefEqwVAlID3BKj+8jTGXb0p7rxVR6HR5+OhIjJmm3lC5LEmcBNBjAyEALh
	 GhQLldA51O4Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B98C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 19:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178414251374.1674.927453205235455277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e758af9fbab0fd0fbcccb819ef4995ac02fa2e97923fdb0f87ad2b33c862c994
Date: Wed, 15 Jul 2026 19:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784142513
