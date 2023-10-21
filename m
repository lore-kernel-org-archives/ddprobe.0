Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D5A809
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cg0BZ1tr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9150AC433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697868496;
	bh=UPa8i53veoCTlzyJ4ijnUMjSVY4JyAMUn/k7OVTPi9E=;
	h=To:Subject:From:Date:From;
	b=Cg0BZ1trY+NVDgUF0r0jBjbCCdHR3U0aAgdI/9W/+pJkCHb0ocEIg6VtEdAM2V4Ck
	 m50HhkJA9Xr1Y2ip/s17zcgZaGwk4NHTecW4TxCHUmHNPUPsFjB4moWLE3bAu6caCK
	 PpkxY2rPn/u+5jASrCtb4OGhdE6JR5cH5YMwyFI0WmlKLKCbTLOzl7KR3itp5SA45o
	 lk1n04/9LYC9ogzrb3kHP03FBMVTxpHEoZDxTIYkg6K7oJVp7HpgvK3SCaHtXKXKoV
	 Cl5hUS3B/JYp/o9K2nUVmySGODUDQ2GM2ASwrrW/7F4o8lp8WPQWHPmaXJQ1f/SMle
	 YHgPAT+rtqYBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AA66C001E0
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169786849640.8247.17166653335371031632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1b0b5eedff03c0e537d625b10b87c1ca65ac64122c47909b1af32a032067fa
Date: Sat, 21 Oct 2023 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697868496
