Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6866C1CF9B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 11:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721216723; cv=none; b=uEF7tZetikHGLMEEowty6uPuhh+1HV8dwQxdXUHnCO11c02tGaCwc9MmZzaRRwWNOOMpDlObHKZLWiKhuMz5aZSf9wTXiaTsquFau1rvXIdpV/xzFtRQRJbq73mCLCfvvXr3utoYTee3sO3NJUqbMTXy+HgXbHnQ8qNTR1FFO8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721216723; c=relaxed/simple;
	bh=w/AUABaeh7X4b/swtFKWcQNNRgux+9Fb6LV1Pwx6PPo=;
	h=To:Subject:From:Message-Id:Date; b=Zg+/0myxRFhHVEi9IMISqnHDPIbWUz0dZJ4kGJWrsmRDseCRF3HqP6yv1OYZB6Ae6PmuCnzMKIr5uEJ+530q5VcXpw1KZsDr+iU9TZv0SpB5BkRjVzHWtVzDeHt7rOQaKhUc+bIZzt1tyEvx2BVNxlIfjU0UPan8gD8k7F25Beg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8WOTZbJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8WOTZbJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCD5C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721216722;
	bh=w/AUABaeh7X4b/swtFKWcQNNRgux+9Fb6LV1Pwx6PPo=;
	h=To:Subject:From:Date:From;
	b=Q8WOTZbJm5kA8Zn291ylOJpqHc0Gp3+yQbuJmPjfTzHEpBn5J6OzficOy1WmjmypD
	 InmXSfCs9uVc134LkLUiQdPu5IqSUU1R/483S27WptWkRRpJGqsJzWfhYAklpo5C9o
	 A3FMoj0vQe60SRB90lsWPyoanq2OrqM2MMZPHvjpFRYJLBKNm8t4nTw/S6GL19+ywy
	 pZ2YafcnmRENP65Ng2nwnCOzJ+JaNb7MbI2aHow4gYL/OwjVckMyeLSiw4icaWz7xg
	 z6ZdsJ0thoal6oxuCWggdEgNbRkqnxf9QpvBp/FD550DSSKUFPqpY08eY3r984e0px
	 8VzWpHOKFVqig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F8CC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 11:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172121672281.21039.11397238526273463948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53041222f59b2f1113951accfd0c004f7279b53ea05293e53b054b4f1c6e2aa
Date: Wed, 17 Jul 2024 11:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721216722
