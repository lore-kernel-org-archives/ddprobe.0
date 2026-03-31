Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03CF3ED5BC
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774952693; cv=none; b=npMI/LKxVBiNW9ofjEi3y2oXc8zfIxs3tBJ2ftUSpK+zoZnXthMjKU7OgahkaHSAKt8eWNkZdVhiOoScc1EwFx0Uf7LzEyMnMukJNgz67VVw4R6t/dliXFKc/cEG7a1l3KAliZALPXOdjeYQ0yzeDGfRRkQXPj1FaOPkPvk9LH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774952693; c=relaxed/simple;
	bh=5buuwp1AgdFySnz61XiPx2ZgDU9gW6wes+wexZgSc9w=;
	h=To:Subject:From:Message-Id:Date; b=e6F1yvyCIvxPe3sH1Oggn7Z3eyXPEiRDyGui1d2rU/067i4Nnn0v2aqNCkxrZibKCihnLDAtP0+ir9Hs0K/WywH8if+0K6C6zRo2yWQTg0if0l6fkK+PIf4cfntclKLE9/VAyw8EHGngV4Sr1Gn3dNM6ezXsokGk8HexOt6xrws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLQoicjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLQoicjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CE4C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774952693;
	bh=5buuwp1AgdFySnz61XiPx2ZgDU9gW6wes+wexZgSc9w=;
	h=To:Subject:From:Date:From;
	b=WLQoicjffPwNy5BfLSLF8SSXgNeVGES1L0KJwMxkR3lWSVvI2RqQFeH+YyqUPWGm5
	 2z4n5yT9x8+9yw87JeMYYTP3H2nLJ+ctVQDCaBPEYI8R/b4B7T/eL/790lrcc7bhiW
	 O+pxncFDKioImDQZMeI8Obu6nTxkOSR/D2EQZTLr3F/rCu2maIO3x/qbPhd/nJXRk2
	 Uc39ZG4WvLnkUoYR57/BYSs324tERdvPOdUAmLUhc8kj1n/WULVlIM/tDvYrq09xFx
	 ekdmwSne+MGI3AOl+A8pvC7pRk5Yr5hcY9kWa02h5Em4lWpGt2qxIg4iylfQNvb8sX
	 oEmxGIXmH0c7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949471061B21
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495269359.9217.2653676882282398155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1de1cdabdd9f1122d408e396806e913ae3bd74108ff8c7bf13296dc0a4cd37
Date: Tue, 31 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774952693
