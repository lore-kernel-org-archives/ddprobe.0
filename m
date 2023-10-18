Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9730B816
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 20:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWhaUpeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01FB7C433C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 20:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697661493;
	bh=zj2zU33U6wyiovuoIag7JAlFDjepOLQ5hRm7IIwMElM=;
	h=To:Subject:From:Date:From;
	b=OWhaUpeYr/LYtGqqSSHqOO09LmYHog3npdEsRVKT53z7rbPU27a0oHq0EZKli4NQW
	 CXOa/xPh0H0+ydA3IGrMj+5w1hUqwoWoX3hCYVPheVRlo4GlvEqIXzHWqsoGrTjuDr
	 1tvKpOazhDAX5HgLCuWitftwDlcBBt3IlkMrwuM8wCaAXOVZRu4hUsQaV3nYCkiTOp
	 4Vn6esfuEHzqHLvx5i6jJ2erlB7xydbUuA+RKi85Dzi0KxIYDqAX0esFy5ejGaanaA
	 dA+/tb5/YGryZHRd1vlRrIZeBz76vmHGrqJXRlvMrHirk2isCxsWkual6qVTHKfagh
	 7C763RvV5HV5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D29D5CDB482
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 20:38:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169766149284.6905.2902684286934002196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093d0975a132c8b71f6a7b0814634fbcafdacdd84c7e409a587d3996b0cbf2ab
Date: Wed, 18 Oct 2023 20:38:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697661492
