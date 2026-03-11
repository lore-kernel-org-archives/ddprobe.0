Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1112A238D52
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773210894; cv=none; b=HgR/tRSVEPnc8JgNIyIAPbQcv1ZIH+93sdaj9HEbfnUBP+yvLKjdyV/B53VfThWhb2JQzIK2Qn1dI7oirbX2bTPA3aPBsMdxFxrlAtKgQilJYWslTbl6AvgGCQyXpgqCDmMIlOLA3oCyDToNva74+A99xoAiYpi+eYh92RKfURg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773210894; c=relaxed/simple;
	bh=ggPYYT6gLS4k9aIeiENxi2FI9loD9m2gq3+GQsbDZ90=;
	h=To:Subject:From:Message-Id:Date; b=C1TyyKVwOl5CW6S4pdnMI3PL2micetjCsjbFjdXrLbuBAG0H+k7/3zqXi8X6/07bYurPPzl5CSu9WLPLPD+Zh/gBwNw0W/WdTrTt5fyPLj03n8IjDIENOVBreD9n5fQK3U35/7hOgrBX8EoOxsXwoYwHOFmM3XGAQYEPxNTL86Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gY4f5Tww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gY4f5Tww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10C2C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773210893;
	bh=ggPYYT6gLS4k9aIeiENxi2FI9loD9m2gq3+GQsbDZ90=;
	h=To:Subject:From:Date:From;
	b=gY4f5Tww5Mrcc5JCXURuA8C7vBtFacR5D2KY9K21njoxfE8G2fTWw6bE8pJMnR+0P
	 9JrXkxQp1NZ/JyN186WdoJjf8hTHs7kjJZ5plaB4gglJLDO5TICx2ORQJSxFAxi/Do
	 +OoMTggAe3yGBUC3pTxRokzuS61PH/3HckPMGUaen49a1UzkPKhCa5HNRjgxfQej/A
	 JJ/tS6mjtiwMqBDac4qpW9/FoNKU/JbheEI8hd+BTqm7nPnvliJBomVS4dArk+ONHD
	 HZ1XipvzLwlXqrFO+BSD7A1+JKP4a4wJfSv4+v5dOdOOrL/OjPd/YkbJoYDb53wHgn
	 GGz30r6n7c6KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA05FD0623
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321089357.4925.2743251417890392202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298365c5538c2fbb9805b319fbfa2941b108f5edeadbfa7ef095a00a82f7f2b4
Date: Wed, 11 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773210893
