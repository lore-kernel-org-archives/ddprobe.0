Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2BC319847
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778800834; cv=none; b=D52kZWDU0jegU/xkIvdUr2/wpZCfZ4Uydx3IBZEb7dzSyi1Lu4b+X8RQjSMEWXZIQZ+hEUJPpd+X+sGaj+VFniCTZ4Uuwpz7eGQBCHiCjggj5UULgLMwPWFC9fROqrHKn/AxL+yF9R/TILjYF4/E7UdAylSEBDxfrJVEmHcLMnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778800834; c=relaxed/simple;
	bh=JF2BBVVTpVqix9Qc8JejBW9t7Xpisg1qjLl1Zej2D4w=;
	h=To:Subject:From:Message-Id:Date; b=BwbzGk75spGu+kT9Iwgi3Ux1E9PzWe+Kp2moxpNswXk6gBpiOMZdb8oN/GyKUow0xEZEKrYaOR4emuknxN2BRSJSUAPkbUNPI5qIh6QdHHw3B6LruK+6uacAJRxlYBxwDVz0IazdQKNKNwFLYNZbOj7WluqsPhX5NnRoum5y+98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/6cYcKE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/6cYcKE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AEEC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778800833;
	bh=JF2BBVVTpVqix9Qc8JejBW9t7Xpisg1qjLl1Zej2D4w=;
	h=To:Subject:From:Date:From;
	b=R/6cYcKETLDUWVwCxQlJUM7FVosT6kTn1EQuc4bkyYJcn0BxKZ4214B2UEFySbnLg
	 BHJzpF06YW05nnuuyZmbjDSKfIZsofAFKFsfTb9uk9BsYPxHoLTjAe/asJbq9Hz7eR
	 P4wnpwJY5T6KukqZcDb21CSzrhzi7B6qDlG5h0d3AtQClujY4TIJ866iBJtUftzqhD
	 JzgYGcHpKthfLuO8LP1vOeOCscm1yfbdalIq71i2X/bDVpMtOgORUUDt//A4ixV3r0
	 qpVUEwSNdkuJ1bfhSXkeUVgUPqvdy48cSf1Svk9H0WQtM0h5A8tF3JAvIYzC+8YDTr
	 wCnacLhVvAZWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00EBCD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880083369.10111.10608594850179591409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe0e2521ef2689007e8b4c96a86a3eb836adc784492b89a47ccebe571cfcd62
Date: Thu, 14 May 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778800833
