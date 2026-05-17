Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBED2F7AAB
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779049234; cv=none; b=OFBjgBl84iR4OV6D1/2GQQvnX9ri5y17LJDzaJCOK5ha8ig1mlqxbdrQr6oM2UqAX0cwTI5h3QEmkFyN8gPTnly45on/eHwHNhFEGj1yOfnQlD8eygLglvEqqeq4WyEwYjGwHFpyloLh1RD8pDXrhb33PWFnAQpOfC/nXphmyFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779049234; c=relaxed/simple;
	bh=+r52WG6P+jW0VxJx0TLWAgDkrpDlQpbYkXmWn4rOAjc=;
	h=To:Subject:From:Message-Id:Date; b=Q7IPyD9ODmBpmdGV0p3bTWZv7/83p/ZSVTBgAYchdmLj5HYPXb8FXfrGoKzXG4E5wxu9RK/0k4hKt7hFryy27bByUPHGeTn5eILcQ8WZl4cQHHVcM8cVrBwC83xIDHtkTsWntFcn1E+HfxboQ+YBNJv9KZuRXS3Z+0bXRxj1U6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJVNsVyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJVNsVyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5B2C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779049233;
	bh=+r52WG6P+jW0VxJx0TLWAgDkrpDlQpbYkXmWn4rOAjc=;
	h=To:Subject:From:Date:From;
	b=eJVNsVyIwdxbEperzzujAyzB1vWG17NIaOFd3q+9lsLOrmddJoXD5R2hD3BnWlJIp
	 MBcg9w6o1uCy7y5CCctW6IzpNfDJscvJN8H6LzH19EKHmhTZrz4vMg28p2Dk6GMXGo
	 RDZ3x3kGfOXftyLdFPkSpGVvjTVDcbe3A5Cyz8zywuJyBI5tUfowR5XxETl7FBVZWO
	 chrsZkOAzK0USISd0rOsiHESsZnFs407MLFOen4KSrT35Si4eHmarWlco83bSCe2RB
	 eLwl12Iupofggxc3R4GXJC1fqMExXfuMbq2FJAFDQ/Vl5DeWKUq28PCkzkuqr/nknE
	 6XflXq6lHBhTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE6FCD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904923368.5391.1383616390434857133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5504f90778aa03c1832a532419831c4225eb3aab6872384775b2d2316b8ff0df
Date: Sun, 17 May 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779049233
