Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2831D1367
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751591394; cv=none; b=W5TbpDM38Ul+dYTpDNrjhtY61X9SWBsHPjbHCjrgp8PIAew7wbM8p+4RvMEJOITly81LLzZNvZ7hrt5SMV+qgW8nqlwt4J0mJX88Howti99OD5VVnt509AedtkEzl3q1Zg3NlMTIVLuaHENZnfY4HIsDYxW3izbVc2ehdEEZoro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751591394; c=relaxed/simple;
	bh=wQRAGy4nP7XAyS4Y/y4hld5/Sxwu5fLNUoOgyLP5hCk=;
	h=To:Subject:From:Message-Id:Date; b=qy85P9v7/SN8Hqqe8qwxm7fTMkfj3Bq6qpo3olCHlvsJdNjKc5wI4YBK8RwokLje89JVQtQPlbGxMbTCeEHxq+Wv5LheN6HyAY/KS4EKVru+7t++SIeCFhk2yGHftfV4Q3N7jlrR+DNuYAuMI09c+p5I8Z7z/0d/3QxxV0DFy4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkWI+rf/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkWI+rf/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32B2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751591393;
	bh=wQRAGy4nP7XAyS4Y/y4hld5/Sxwu5fLNUoOgyLP5hCk=;
	h=To:Subject:From:Date:From;
	b=VkWI+rf/xjREQYCZRBRIhombFpyiBGJd5+Zjd/Ean+w+/ZdyVoNVKXkBqGZ8Xk9Bk
	 Fw6IaPo7LBrDyBBm0EaUh64Dpot5hIddCtjFbPTmhDZTtweVwle3hEaqrA/fFyLQpC
	 I0DiEi9yvM3qzBb8iX+nSn5dgU5r6TXwWa0h/Nr5IbsFOlyhqJ8hF+kLQm736z0PvD
	 EEOV6spMi2GrIctuxrlKdYB83wtZ3MY8Fbd3+Od1c3Rv72AXfq7uq/L3AuhTbN9RWH
	 8rejVt/wmoc5a5wYHzrIv0poVQlvF8NFajPVmkzzXO4r9FNlW9aD78EtpP0V+mepix
	 PYPbawscX4+yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90945C83F04
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159139357.7042.8278560665809016059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9cff13cde61793ea0e651b210cc24eec481b3818b5001088121d20fd939ce8
Date: Fri, 04 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751591393
