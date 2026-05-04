Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EFEA3A3E7C
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777923454; cv=none; b=VZtAkFPisJb5KrlgMFTliB8Wd1IS3wL+PkrZW9bZ2XKk/ImovLYo8hClwL1VzBLCk98z+GrQvFp6D3gUwVSld55/L7UQeAebIzVs6mkqhnjVz9vZKHZQ4xeNeKuaSPfD+7s3xtsq7PADhKKfpNvAYBDbr5140nLNHpKdZTtYmAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777923454; c=relaxed/simple;
	bh=A0RbVxdOsAkQWOIbsPIrF1ta9aURRSCLebB5WBhAcec=;
	h=To:Subject:From:Message-Id:Date; b=ciurJuv4WtzgENXdCT0P+tT9EohEWtjCdj6x6S+Vfqln2mHoQYJckVdLuyjsxu4s7G6Hex6eg4x7+y081M2znDfZpKP+oWaj1rOXc+Dnv6C/qotMopmrOSKf6FzxAzdSS7N7tw2rRzgG5yDugAisIQXN/y9BjDxZGxXs1VqoZK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFwbbsrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFwbbsrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE8E0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777923453;
	bh=A0RbVxdOsAkQWOIbsPIrF1ta9aURRSCLebB5WBhAcec=;
	h=To:Subject:From:Date:From;
	b=OFwbbsrM2lBXUDxFKK41KB77FKVQagGbJT9bJLzAPcTH1Q9xgYREQ86XI+Fs4+tQx
	 G4Ycq++EtB1b+GIeH4aKDMP3mTaFIJZFxnsUumCmnugpieuQHdDrOUr+EM1Mx+9EV3
	 lr5APe4FSRKaRfExmwJsc6kBcfyqkkgZ7v2dbEaBkzVq3kyIfTFw7Jz/+JeDvDP4mu
	 AXuVaRp65tgnw80wGGa84EQPiCjO53rXckXn/NtSOdtItinqsO4Pw9MMkPGD+dGbTx
	 QtOIoEa97eqFsP3YdGp3IpFZI0sPjXp0ej+rIq3JRONFrhve5fL28c02IDFSh0FkZU
	 Qh1G+yyv7eyPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA60DCD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177792345368.405.16245583816473217603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12cd88a06db83b77d149fb130910755b64f4f303ace434d11bfce4bdfac91f43
Date: Mon, 04 May 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777923453
