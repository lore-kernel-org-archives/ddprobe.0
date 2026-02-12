Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BCD15B0EC
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770859494; cv=none; b=bAxx+1l/xRpahNV8t0Sdb9I0nYAqKYCg/U2Pr3NPcZ4gwNB7EQo3ZCyoyvMb5DuzuyaFLlWWusIW4HhFHXGSgmNMP/GsM0TaX8vULX9xmY2r4F0etnRxrzJBjIRKCpd/3O6J1LLiNWjDZfrMX1sR7WrEnvjScZF0OC850aNqN3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770859494; c=relaxed/simple;
	bh=PyX+wvEzbYG7u0dTZTOejj4ILXCn+Kfhugi4YrE1jRw=;
	h=To:Subject:From:Message-Id:Date; b=C7PsQ1Dpr8CvaW+Nu167WF6ZkwCyPG1NOhBqPJEatbcEMxWKQjuMeXqVoI5Af5Y2q1raWMQ41GfixNA0DdjZADr2sTjBdoUeEalLJ0ntYiX0WP4v0MEahuJi2ETv6oesfHQp1+UTu+EpQXxLB5Dd9LVFvMciAfF9ec8P9cj0fMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFxL+LWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFxL+LWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA1FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770859493;
	bh=PyX+wvEzbYG7u0dTZTOejj4ILXCn+Kfhugi4YrE1jRw=;
	h=To:Subject:From:Date:From;
	b=QFxL+LWb4ocagtMUc6c1aKwzL5qcnTQ70WeSjJAl70zcH4fSBZEABuTe6FVDl5nUl
	 hAZM3ccNlzKAEwwHLavEJmIiboi3J/CdVUdKpUZ2/+ouXYeGp9CfaMluICOhbp/EQb
	 9fi7Zc+ICFdXeBKJLIBpsRxpDpDeu958qqy4cLZ/KZvpcuarNp9y2acvnVzFyvAxaA
	 Q+pNFbyoT2c46wy+cDU3CK9UU1ML9QrhCAXp3ITwwEH+XyuFB3B8pEwhoQcFcnUb7A
	 w2thtXadTRI1wikbNAj5BW9ufAkl0KmEUKHrcfI5pAux23miOnbg17aKLKY5vVaqkN
	 MMXvrF/QHFIzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46B9ECD6F7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085949362.12000.10228360324778032226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da55116edd50edac8b2904bada8aa1cb6db35e2bb38f8548e14d354c49da6cc
Date: Thu, 12 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770859493
