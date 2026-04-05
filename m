Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2195426738D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775425534; cv=none; b=chKvdqGRiQSCReD/oxeLtRjTXpZec0NvUAt9/vlWnN7rviRImwL4BWfs2oFeIcSez8GlI7KeRFqSVHB/HW/rBSWMM3xh0PBckVeUqJBcsu0DR/ndjQ3OUY/BNqt9sM/nIr3XAgfMxCHBLd5UHvX+FFf4cXQOvcHDfFF5jQcy6YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775425534; c=relaxed/simple;
	bh=HI1pCljObHHOEk3XXypVkcW3mL6zkeHn3Xzg5rXh2n0=;
	h=To:Subject:From:Message-Id:Date; b=k+DnV8RsxC6ftatmKpjEqq4KFdh2JxpxWMIfjYjalRbv67uQ4bef4TeLdV3gm2TT86RXFHJWRsVWa3E2vM5CqDoMwk5MJavtP+bQhce4aTn5S7rmoT/+x6AKOTOSpwN4nLiEyw7WEA5aMd0YZqKTZ4GwSerShJfNGgLYjs8dlOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZANW0/HW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZANW0/HW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54A2C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775425533;
	bh=HI1pCljObHHOEk3XXypVkcW3mL6zkeHn3Xzg5rXh2n0=;
	h=To:Subject:From:Date:From;
	b=ZANW0/HW29TYKy5XSKtzI6Gsr8LKGYztd6TN2k6wSM/2Jfkfd30O7Pc9yN+TFG8Zt
	 9dEAj+/LqWM7uJsRon9s1f5Fj7yb4f7Tyqlu75UYMnlSuUCoJrccIddhh5KaKl/0oN
	 S+j+0TjeNdopORH3pA1rhYqH334Y1d7GCuzBjU8XoGm2sxk7vK0AggUuuiHN/CpnQL
	 vfjTE6IymPBOQsZkoXqI0vuh1hqNFSBZoVz+ydChZGGTWlgg0oPvOOmcerLYdH/Bg9
	 FsCn9Lyz7s+zgP0yiDj5rmX23rRTH2SkDc6NUuqd5Eq7GcyKmHz9TdoMcoo1iL7EDb
	 Bj/5C2A4dVIbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1902E9D823
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 21:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542553369.19312.2214063861868777787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f19c8aa65d45fd2cb63218a12319fbc8871593274f50124e685886ec55e6e7bd
Date: Sun, 05 Apr 2026 21:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775425533
