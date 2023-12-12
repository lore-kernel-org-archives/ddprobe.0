Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE211173C
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8sNpKs6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84F03C433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702423696;
	bh=HP3jSULXfI7ctMpxsJOetplWzqAW4kILfB40FW/cpeY=;
	h=To:Subject:From:Date:From;
	b=D8sNpKs6HkJIiNYOv/OelDMFhI7e/Ja0LxexjEKr8+jgikQ4I9IFk4s/4cum4f4qZ
	 0PXmpM9noNV1qFboF088szSw2QuN04CdqSn6CEs0m/WAuStRwQmTLTbj6MvJTjaD4u
	 8wkfp69e67JhRqlsYC6xcujDzXtTkNKRT75RkcmFa+uM6rLcc70z2UlFqq1RoEOD0Y
	 Mzy9OCawffFTx0mpZ3r4dgOoSTx8jLOYleHdOgnjCVEBteUShgnYugJxT9fvqL+cK6
	 OuGnBoDNts7TH+QM5MnJP00j2JEnNAck6zWSq7x2dv4YEIp+uYJ/ZadYlKqOLb8Q+a
	 Ud2DCIMPWoCPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68FA2C4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170242369641.20155.1477447407678745102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ab42d4e4ba12327d8421078931cb7d699d609b5d2d73485c6566972c72ca0d
Date: Tue, 12 Dec 2023 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702423696
