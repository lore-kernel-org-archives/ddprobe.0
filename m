Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBD441323C
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780079554; cv=none; b=ruEozXoiuFjOIaKk8vqJyeVeGqUbtDjTALMYFVLroe35EIVEyWsyRbeWw5Yx2QuYwwYa7LXRL+8wrj8J8iSdyZZWnQgt3aGP9V8Wl93JEL1+8+yfVQj6JM4eIBRCnlEJEDc3Bs/YEtUoU2gY9CCTCwZf5PuXEQZfSgXyef2UrDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780079554; c=relaxed/simple;
	bh=xjPQZ8k5aR48lWJsnb9wn+4HiEoaGeNKs8xlm3JSlUc=;
	h=To:Subject:From:Message-Id:Date; b=tm0oUZ68d96/E68TxHUpsPtvXNTXlrQahyoxdmwGvJ16XQKSCOZkVChlPCzSR9VfeuB6dRa+QmopmpHFtuwz0pCt63sP1pxmFb9HwbvgUXecuZC1PyfzMu+QjGdWZbOcJ5zFf4uCbdxBPNnCBjQUZ6ujQ4qts2u/xC6wjPjvb2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnZ7Tcf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnZ7Tcf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7429C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780079553;
	bh=xjPQZ8k5aR48lWJsnb9wn+4HiEoaGeNKs8xlm3JSlUc=;
	h=To:Subject:From:Date:From;
	b=cnZ7Tcf+HpD4++FPIRUmOTXqu+VLcgqYFeS3Ik5jocEj2/YDz1ytCbiRFLtcVEsOp
	 67xiDc3jsUIAHYhHksXe+63iZqoKEbrIuryRXotzWtvBbMSAC6nv9YHtmeKrtC5PR5
	 T2QMVuVEIb9nBatQmhWaQPONDG+yV1AH6CgVxxICCW7O24MHfQE3h6+fyEk3nP7G2M
	 i/fYmKmM0s7I1k6qYLPN5wGe8gheYP3YY1M0YuL8axqIPkXqpsdvW1gJjVNU67xTVW
	 yaAvvg+LYZqEppRp9esrjGi405Zl3Jsh2vvTcHmP2IHFFk9T0LdFgO1Y91/oW1ptze
	 Q88DSqvTkprBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF3FCD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007955374.4979.2223655647654470787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 584e625a4b686d93152cd399d0140c13d7ab478b253fcb1331378bfc7806ece4
Date: Fri, 29 May 2026 18:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780079553
