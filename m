Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0B5262D0B
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764361974; cv=none; b=YyD6OYx3Zb0UmNUuzPuI0PfPKC1M6rK7iFdVAQZ9YFvsbkN4U+c/qdntl5p22WIue/uyGArES3ifg9GRQ3iVj9TVePOI74+iyhOgGYY709qCMFIA1hl2eJJjX+llT9tSkYuqZRYjv05paRtNimUEFYU+doL4OuuOoUYO7gYJiEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764361974; c=relaxed/simple;
	bh=UoC8GTuU37/e56hRULAGivMbVY6tXcqSiR1N+/VdF68=;
	h=To:Subject:From:Message-Id:Date; b=Lp08V1b1P3/hb3+NFNi5xDXnjEyALTjWpXqxizmQeErAoMLK0Ypc+y8nDjaYHM3kzNBDF13LM19dSjZu7zeCCQ2ptiJOZ7XjO3CYdK/aDZCxa1bt4vSe/W9qxDh2lyFVoWER/pA3tYEcyffE3YNhou3wd3V6/nv/pWf6IJGQ0HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LH/KWfx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LH/KWfx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B98C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764361973;
	bh=UoC8GTuU37/e56hRULAGivMbVY6tXcqSiR1N+/VdF68=;
	h=To:Subject:From:Date:From;
	b=LH/KWfx1LMVq7CAn+Ayzbv5G4YIWdxEXEeTANr6Gz4YKYony7W4pxH0v6HB+do7nL
	 jS0rZMIzerRJT4wATublmHVRhxNaawEtpen1rB0cKepJL1HTQnzxyPC9IQNoTFP7PW
	 0lq9Yjn5GCgIKYhtqCyz+rDsP9GSmK/wEAshHTq/VChwOlc5g8MJjOTTK9S1VAjqiz
	 7IefXTU80DdBDximgopMan4mdAL25KYVk6XrXAuj6YC1YATTfTacyD+raBBxggj7P5
	 Aqd0p24qSJ0bhlSoMaaJdJT0JWG6Bi830I2RIQkRpTk9Ho3WWRWgJNAfAYC7qvKPeu
	 E5fqfb5GXGJhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91387D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176436197358.8117.10795597301452418031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a2381b1670f751af0e4259b6568d46d05876804525adda01572d8f58fe82388
Date: Fri, 28 Nov 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764361973
