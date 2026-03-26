Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC08E396D2E
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774514093; cv=none; b=kpEAW6FMCedf7c6RutZtWNmyF7HZuiFg/Lrh9qKFxFm5zvBgA2EwM9q9+oBcYAnYiTuGCa36jrNfxoUSQjM+B/VBoISmGIKVo0SV6ydfkDGRbMdtrfyOSgOxteu9ADUCBuY2txAE7Eg1i5zSn4YAPcmik7JYYcv/shSwNHFkZrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774514093; c=relaxed/simple;
	bh=6Mg1L0oXUx4UPI+jv1uGDSvreYomZ7VlsqvJepLa1xE=;
	h=To:Subject:From:Message-Id:Date; b=i7ZwZCLJyKxtShRGkg3eSTFR7BjB/0tN3LxQEY0a+F9FV0LD1JXZk8Yyp6Ap5l3rPcMmh+vrfVo2LzvZ9reBzWdfw+VhP9B7agO3JEk4FveEw9sbf0DyTZ9jqytAT86jhvijFhwWvAn1tf4e38HFrucFnojrRCkUvacXKy2Cvtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyjWrC4/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyjWrC4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2404C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774514093;
	bh=6Mg1L0oXUx4UPI+jv1uGDSvreYomZ7VlsqvJepLa1xE=;
	h=To:Subject:From:Date:From;
	b=eyjWrC4/Jj/PHwBjL9BA+oXODeQpbZqookCWn9X7eZk3dLUNHdr+2cLvdZGnf6Ku4
	 KzQ6IMBVNaGGo+RMJHBn4CNfvdGazAOf8oESE/RJEDaVYZVbYxzBhJjCyiApnfOtuQ
	 F/2XwCLhWoed6J5uUxZhZ5W/FFLxpdehf6FVv9psXgTyFSiJcPRrtQl/jOE70uT2gE
	 J5/fzLa9Ym6JzZfAof1y0nAXlnpDPB+MTLJkq4n396q0GfIdtjdVw3bXTuqM/j81wc
	 rPpuFhf89rBIJXgb8wD59dg/SpbpoPtk0nYzObC6+aeh9M8faTJtORLy83DIvy3Noa
	 08GSTGXEhZt6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ACB106F302
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451409359.21300.10873396134684156245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de66e7a8092899f7762294e3fe028d324d0f9d9c87497d3cfac554610242d24f
Date: Thu, 26 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774514093
