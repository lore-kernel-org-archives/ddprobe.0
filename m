Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75CF564CC0
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714332143; cv=none; b=HFb8d0r08I4Zp8FUujMZkMr8JTz7ozUpQ13AAE9iYvi7rASiVOoRY3Md4x8HC1ZWk6Izc2EtZOB7ZftZJHjZxZX7GD1mg46UaGRRhaJKmrl6uj0aJeM8G4Fc/duqPC2Rj0T1KFgNrYsdSE9kgkQs8M593K+CxnPLDGf6bgVf6jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714332143; c=relaxed/simple;
	bh=SN2ZlJNHzqMLJU7SuE/jjqXZwCNUfeeB6chez5F5vcs=;
	h=To:Subject:From:Message-Id:Date; b=KK8ZFnftyIgOPmt09fC7Cw9NvXnp/UbGkBmDrBNi/wgHakBzu/aNqcX9XDr5SPoBsw5tEY6FmQF6xWJT35fZRNAIpTfci+ZA4KcuYe5LZwWb8bjhCsCtF/L4UO8dKJYUZtS/jDf1yN1SU9Z3ZJdPoNuKvhcC8vei7C4ZJcUY6go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaKBXyNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaKBXyNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C33C113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714332142;
	bh=SN2ZlJNHzqMLJU7SuE/jjqXZwCNUfeeB6chez5F5vcs=;
	h=To:Subject:From:Date:From;
	b=oaKBXyNhJ6fOCvHfVswVUGdCR7NK2UwAjxbOZEUyx36uQ8V0q/cPGgxnDWTl6ShtU
	 2KsK3gVZ7p/OHxGsr/ObEAL6csSBxtj/zEYD9TaRy5S8wZwHzh4EgI9m17IMLD1PUd
	 rePv6sl2ABhDoIUsf6Rrhqnre2n3ovaO4pIOuIZqhbZ18wD75ej0dTlrWymkXx+3h/
	 Q/Zlq7/oxEU4IdQPVbqPXUQPj2BDgcpvxXUbyvTZEEFrnKViFMYgugWeq3Wc1nMqhR
	 O15PrDeIQlLJ4Al54/HfoRFb77hFErhh3BlBREMVLqNaymxEvLLRXSiI1nI3ziyfva
	 aIjH+LcOhwyTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF85AC4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433214276.30676.3744598828942623041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd2c34d3be08feb75aa5b6d94443c82329d6f7170da0baea6e72f08fcd23728
Date: Sun, 28 Apr 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714332142
