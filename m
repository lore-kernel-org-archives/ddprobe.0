Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5961937882B
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787353234; cv=none; b=Bg7etWIqUtjACN1hCXz89W5WDtInwKZYl5C9m2dS0uXV5Tf8+aKPWEySu4RMPmLTimi8OaE20RugNegi+YtM3vq1i/3VscXVuCMNys4ddzrPGNB+cac0XrK/VRJBm6jRAcVTnKrkx6snxQc7rpTaLOQUqFpM8xxmWNcc/qB2SBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787353234; c=relaxed/simple;
	bh=wUURaXcFkqPXKJjznLiSANTqDgTruSXxzcj/7dMBtZE=;
	h=To:Subject:From:Message-Id:Date; b=uEm5+kH0TjxdkkWKjBREkeRkO/O1V/dubs9ZlZaxri1VTCgg4HGzCkMK5zFF6S8O5IL3jKFZXf06XoyPFdOyrORNYXONWYRkzFnc9vbcCukdYPqR1jn4WT+pnCKfk+GavZhhs2qW+ngTAb5ZxmrPy2tWLCL8QXxCVz3b0UUxfg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sv7+gb7A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sv7+gb7A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E359CC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787353233;
	bh=wUURaXcFkqPXKJjznLiSANTqDgTruSXxzcj/7dMBtZE=;
	h=To:Subject:From:Date:From;
	b=sv7+gb7Ai6AMQPNHj9kUaz33YtM2C0QYyE7ry7eU87umf1Qwy2KUU4wAxNZNK5ykM
	 nLgUyMid5T31TMnm6BS1t6p0nq2muURleSmB61uim4rf4y9rJ0du2vnU7l31PdGFbN
	 jC+p+MxZRqb1v74PVC/aU+KxC0jdW2fSCMwxIX3z76voABK2RQHFBsKTvkguwDGgES
	 AQgee5AN8x2UtRVhRODxKpUGH7J9oj7BSVn6dNYoqpbCyMvw7BVc72MlZkl5ycQN9m
	 lXEW1E1h7ELBo/I3PoRwf8TEexl3oqc5eiwEKMKQ3agjVR82oFjlKFQ8N/FF/g3nlc
	 ISdoHYCQnZCIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3AFC5DF94
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735323369.10364.15919629337501946106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef35da02292b3ce9dbd73fe9215909ef413cd13826e6f36e59e2b39bd7283ada
Date: Fri, 21 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787353233
