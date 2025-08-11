Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E0A1F463C
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754924994; cv=none; b=HXiMR9tHNAcnvqYA2AOA5h3gzoB9oMOcGnsxOVxqgjIsV712X77YXohLrOo1ENljXtG0u2zvh/THcPqBr48KdSmu3mq+cZR2Wxq0YgwIr7sod+1MKezU9uAxhwGT6w1O7os7tO57zGtZlS7YMH+9zrXp0e32GzY6LgsOTN9y3es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754924994; c=relaxed/simple;
	bh=ifUwA/Q/5Z6Ca/QRzbSCzVlP7m/M4Tj0C41ogwhIkBo=;
	h=To:Subject:From:Message-Id:Date; b=JE537TxJJ1k79A17hMIaRekTpYjVTPpd6Y9hZjKV1S+vmY27vLoYgUcc7dFTpqAQJu9B0Jcnh16cJ5BrQVxgD3c2j+nEqP6iCDPJqNbAj1oT/a9R7IUQjPgB5NWEdugLJ44qsNBdnpNv+ASQcgj735czEDL+L6ZCgavrozwrvvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnH2czvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnH2czvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEA4C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754924993;
	bh=ifUwA/Q/5Z6Ca/QRzbSCzVlP7m/M4Tj0C41ogwhIkBo=;
	h=To:Subject:From:Date:From;
	b=tnH2czvdNPrT2XakJ+aMG1fIhImXdX+2YKZ0o9cWJABGL6w3GIFjUGgeAg39vU+ed
	 uJHSE/P7TwbHG7TmXdpP/ptkIneGmX5wEQ/WLvFyvebL2WeFjoWtDJscVjjaHrHOTK
	 RrRkYESunyEpWHGXq3vjdHSQBeWJKs0P7RhtZ+W4aQ9gjppC6cP9kEJoE4zlGLAE8L
	 NOjmKiWBiI44rwr6+qO7A3+4861I1dje185rRUOF3rC8p9PAvzk36dK3DZf74n+vP0
	 0Ct2JcUFngNtL3aBiBQ/FHQpQ9VfiqsvYHs82BvHTgNDOz7Mk2sGGT9yx0ash1/g4W
	 Iw1Fz5qXp/bVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE60C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492499357.31812.3394202434040172988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb8c0898659840c70aade75bdd1c18eff9ee4598e2dc939dcaf498a900ca182
Date: Mon, 11 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754924993
