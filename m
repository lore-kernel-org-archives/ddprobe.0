Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379127261B
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747414194; cv=none; b=FHNWelioQORw/VEfr7tX9a7hDnFZnOqBWsO3f5SISFHe96BD8xMs0Rlq2UYCvsoa5ye+sUFYlvvPp+dn66MoD1L9bjyWCxlF3RxELwkcygB7QNwJLQoBetZt8CFU18HhVNvdQIOHSLp6JlcEiMeLF0y9PPI/whbO0Q+DGWacrkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747414194; c=relaxed/simple;
	bh=H3B8Bhugjvtxh9vbwM1POPqqz0d9E/b+nyboqq8pLYI=;
	h=To:Subject:From:Message-Id:Date; b=rhzBH9XotGo38yyUfrvZ/hODCTPUP4QlfpgBOeV2Y3ikxrcyg9nhP42Wm5N7RgjIo1fZQKLpnvvl9GPNDQm8t2a02j2DT76T7N3S2H5VV+9Gl1SKEV6XbQ4xIserk4rcJlrBFRFl16McaofB4fKjXk0RF1mwTw/lTfUdHFJ6qIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NnhYl3fA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NnhYl3fA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12FFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747414193;
	bh=H3B8Bhugjvtxh9vbwM1POPqqz0d9E/b+nyboqq8pLYI=;
	h=To:Subject:From:Date:From;
	b=NnhYl3fAwLfXIAq/wDUNILU/tiB6MBGplUNFhAmtE+vOdkbLxKW64IctoYee6Q1HQ
	 hlUrac75InTO4pfl8CtDIO0vhMEMaRDVl8CepFFmx6YUtQDGWC5h1ZORrJzagAKOlu
	 KS2e1vnmiP6yAqld1FSLKzrwkd1gYRwtQKvCXi2Jy84fl2mLrVffPbSo5hwIZJL78z
	 YebSfAa7eJprF6Vb1PGIZ3sF7PuBU/xb8fB8scXU5IYJBgXUFoXTZdit0kdcErrQ95
	 af9BTLSaF2qmEDmzwFb25RYkFobsS181Jq7gvlYqYOwhlpVUP3r0U1TcgoD9hjxDKD
	 3CJllQW3RbQrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F762C3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741419357.18820.5315654967564944707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 838dbea64cda34c3f40ebfa6d8a77e8722676de98846efec7fde6ce3861c951b
Date: Fri, 16 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747414193
