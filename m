Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640043769EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785945634; cv=none; b=OFQ7R2diw61ihvKCd2HcZh1yB1G80Ru9is/6ktibnI/E9W1DPNSh/NuXbk4oNonYZkE1OcjTzNVHpzMGCStNR2a9KvSWqzFCgJl6Re+tPOxFHv4mSs5aQhNgJvDZD5wGHvUiuceGnNoJfN6lIwBOHjAztIywS7RPTc2cdJNyYdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785945634; c=relaxed/simple;
	bh=HmlVIDS1zax/NdiJ8QBGnZck3b+o6h8hXSrOtinz1ec=;
	h=To:Subject:From:Message-Id:Date; b=br2qwP5z/vbIM0tj74OOZN2C5MIxG1w2myOjXDn1T1ekzAKbHKaTJqY7bE5w/+3bS+mmuFTEnGUAswVNZF7vXh3+kgIylvTItbVZoyp4jYgVf1r+P/laUdmLAPEJK7naZ94sjP6z35HJFXtXUOU3Tz0BNJrwK+bPVw8jfCnyVOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qn2aKteI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qn2aKteI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43C8C2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785945633;
	bh=HmlVIDS1zax/NdiJ8QBGnZck3b+o6h8hXSrOtinz1ec=;
	h=To:Subject:From:Date:From;
	b=qn2aKteIt9K7m72J+3q4GenJErC8Kvp/SuuhjvmZNjWCqizJZ4CBygdjtghJDQlUQ
	 et0lcsfpSHOVWrZyNP6aDQ7wFwPb0Uc0O5NeKSvmhM4XrrblSeiuPuMKBIUZd5D370
	 jDRaQcNOmgX0/5fwTho2pM8n+inqn7u3w5YLp5PgqJ+DyrRRnn7KT9Kif+wXGVa9n1
	 JMMxYui4a+SV0vobgOFDcQc7Ydj2SmoAeN9oF+s66vjgCoY+2EjnnT7kcVeao9LZEA
	 TQFnT6GUnoBiCDHdLPKm4xgGrGuy3GVGw/QsXeUOxRVlAjHChGFG4iZOJ+EZZQfToa
	 iu+QYmuVJb8Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECA6C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594563370.27226.7836074819934085056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a3266f679a81c07ce46bd57e25bdff7419133ed53d7468a046808cf7f3cfcd
Date: Wed, 05 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785945633
