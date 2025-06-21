Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4AE6BFC0
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750532994; cv=none; b=nSoFEvHn1eTL8Gfc3M9hGzxki5MHLaRd3AXG2cAtQlHR8gcTGCaKAO0dEQus+QLLoy6tkyyOOV93ahMnOnNuPN4HEvo0tgcqW3x2fxhubbCtCcpKn7a+gw21iWMoyaVEYzw6TU+6Pq8NqA8zZmDYxPTpT8wQZ/X+abHqwHQIykc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750532994; c=relaxed/simple;
	bh=4vJSPf537FRH7kV1Poam/v45697lyFJLn8KGJiRfuTc=;
	h=To:Subject:From:Message-Id:Date; b=P65qU1Mf0/qehsg6BgTCEJPUTaW8IM8ElznRjZ57E+dIl5j+8CFRNUihEK0BnNrOIxNYh3FhY9b6Vk9dzGmGUG9+oigv5cEr25ogfkYQ+oCDKQ5GCLFXVjuKrAOByjJRJKH2GDMWi1PQWrFhKHQqeWShQhwqNjlBFf7VCzlHwLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xeet+/Vu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xeet+/Vu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BED3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750532993;
	bh=4vJSPf537FRH7kV1Poam/v45697lyFJLn8KGJiRfuTc=;
	h=To:Subject:From:Date:From;
	b=Xeet+/VuKmlnKcOpNeIcHvFDShME3SO1AsPmHOPkCsDJQajQLltIiTdb7h4H8kaxv
	 VUbDOPD/RdkDIjo6RhQ6Ps6DPrt+ISKmEfgLhhLyKC9R9r9mNVbloMLyTiQEqE5n+U
	 kKwPn2wuwFuguvToiNKZYZwdmwnLz7/+rUYVUUo6nz+lAIKv01sRimudgcXHRDYNxB
	 T8BTq5nmZJTwEXUnzlfjV3G7uFHBOB1UptvU94AkmqC93ncQlNGiLbEyWtgvuOh9UC
	 kKsgJ6YS0DzTcMDai8arEaRYV4UcVE2leP18cWashmdipSSrYt7jD12/HgabvnDJWA
	 I1sHOAZ1+Ezug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2A1C71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175053299357.29696.2398124105578875572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637640e8b3f7c849168d1ae9039bc3da80cbd2fee96911afe879c53d4fd33500
Date: Sat, 21 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750532993
