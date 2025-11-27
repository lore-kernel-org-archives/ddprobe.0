Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5B5314B6D
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764227574; cv=none; b=IsyQ5+Ygiu3cn6zgNtwUF+8spneaQ8Fw+XxM1cA++oG29qDRiTZuWLe3nYcD1tXaCImr1QwRmOhBIokSFD7cwaA8VkPVBLiL9K8CPBMzZN0oWKMs402oLhbCXgVU9V2VwLJyPrMeJt6fH8jHKIC0Y/TVDZ18deutul3Jr1QpIxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764227574; c=relaxed/simple;
	bh=o2U7riGKy3fBOW4JgPlFw7EsXmuwclL+eylwsuhyTOg=;
	h=To:Subject:From:Message-Id:Date; b=CzZGwz/nUMBHYxJ2nP8uklDbmUTzBiRCDS0TxeU/8KvT6YazM4e9ZfP4RSmVJ0V0QTnFhnVtxbN+phy4A+X1o6Vb3PIoUhi89hd8fFx4NGiFn0wJAShCXE9dIElgceB6O62hzukPFf2jR0yYMxC+N2O1Kui1dur9i7poNPnd2PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDxEBqm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDxEBqm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E47C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764227573;
	bh=o2U7riGKy3fBOW4JgPlFw7EsXmuwclL+eylwsuhyTOg=;
	h=To:Subject:From:Date:From;
	b=sDxEBqm5ruABUbjg2haGKBhJzpop4aBwzioNoke4di2ZH4AsNNXxFQbW3zbWFQo28
	 1Mo5NfySFSd/7ZXQvFtgYv+KLpQzLhDhcewSv5aAHfokXDuhe1w7dMJwqjnh79s5gX
	 zDjMYRlf415qOkxC9A9Kb1iCL85k5cP+IjQqGAoWKsRwDIX4pVFTqr5IlUkh7gi9qH
	 bUV3vgCPRlMliZTQqoRPPXZrOMgeeSDGtI4I8iN0JXjc2i8QPtok4lEcuJW4jq+T3R
	 vQ/UoHinVPa6Vg6yw73fq92XTfC2A8lrtjma9sNsN7sNSddeiqyymnfdkc2FLepeyP
	 VYcTTTeFYxHTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8A0D10375
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 07:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176422757363.30445.5486174139518822741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eabc9043eeb83512dc87ee1507a0efbd83b350419d2bb89f737d7ba8394d15a9
Date: Thu, 27 Nov 2025 07:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764227573
