Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F311E25ED
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749210594; cv=none; b=u/lhLAoTTVQr/JcDI8miZ1plKWbWALMV0yXAyjmuIUbKH6I/3+1Ada90AACHWkcxJiyV/wm5I/8lLdHYhewMYHsLcnWSeadFhlHivjnEmMxyJk9mWg5gh4efAtQXm2nN/pWHRV0vJZAznWeXbM5TUUmpbZf4tAJ4AH2Fol8jqTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749210594; c=relaxed/simple;
	bh=LcEU9UNsgkldkJULrwVs9rAwb/w/Kf+kv6HEs2ogLuc=;
	h=To:Subject:From:Message-Id:Date; b=OjNnATqg5Wq04NuZMT70iN9RcBIadEvI1JKnc2ZE4BEoNumpL4RR77a1GNRbxrz3re/USi3xICrp1oxur0YwdFI5IswPHBpDbdJN9SCfUjh0nhjaFou90PC3i6o7eFogv1Y0NNFLXAg919lcFD5N91CZ47YiZnvQA6VVuso+CZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUlf3jcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUlf3jcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64ECC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749210593;
	bh=LcEU9UNsgkldkJULrwVs9rAwb/w/Kf+kv6HEs2ogLuc=;
	h=To:Subject:From:Date:From;
	b=pUlf3jcACEHSF8R70Rjra2baefttGFUVeBgdBwXvjlzofMM+2kd3RRlo2Gzp3Jy3i
	 thKgqBCA2JKjmyNKOOUGhIAN2vBlHCngjUBoaF/Y+ZXtmpdMGK7XjBvGDadTH/d3dU
	 wW/PFO+sayZprZXQHvD5dCLTc7USCTdfxodSSB+Nulz/a2IBKlmDAmCViybF7jpWrX
	 PiaFymgLKpDfX/V8ELCjiJ4sWcwmF206RRq7tOXGW5PWTaMF71ewecTvfEzjjAu3IU
	 +P8zIU2eRjdY6ORcSkuvYtSR3CqOG6Y/llSRBWZFnC+KXQMH2yPlgXxXAGNZ/bQoIL
	 K4Zfp7EY25fxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9177EC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174921059358.5569.10820494170377895179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2897e41b028e76807bc72ed82029bf82b5ed94776b56248437f4a312adf2c2b
Date: Fri, 06 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749210593
