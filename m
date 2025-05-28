Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E0F2750FA
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748453994; cv=none; b=RyaHQ4A7xoEsC6MzltPPHhOtrL0AHEY4wTu1RooDLm2HSoUtMAznaTjSl23uFBa/FhyUAi8W+yJ6jerAhDKKzIxIWOTW3q9ecgOaHtcTExWRTFF0d+v+uFGNVhbyN03Ua3wxg57a8qKyxHsZP4X/AID/51q0mEQCOyWLW1nd4yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748453994; c=relaxed/simple;
	bh=hIu9KONqOmHVR0MHMAGIt+fezO7Furo/o6yt3kr0R4o=;
	h=To:Subject:From:Message-Id:Date; b=LAlsaLUqNUAeYpnK2PJwjosNi8TaaQCFyn4fjZmHY/xPfOHYKoSJYyVRu9w3YH/olgel6aDfXjFfu8jAKZWy+zcB1AnAVmi7NOenlJkYJ6jpxcLmOZpzUrsmo90jq8HrtUsGDoilp3pQItb+x9Z1WV9nXHBvDuyKIS7LjBVCPjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XE9ROqhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XE9ROqhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B95C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748453993;
	bh=hIu9KONqOmHVR0MHMAGIt+fezO7Furo/o6yt3kr0R4o=;
	h=To:Subject:From:Date:From;
	b=XE9ROqhz4Pyr2IFNqUgeZCgKgHy5RY0qLc8c0Xn0rcPTEBcXXvmwEiskHMo9iz2qa
	 UpuNAo7O+7z+r6V0NOecm9F/BJ9thkJcCzxLx3bjKno+IQaenmsgP5Ofkx8GifG7w6
	 cuNRo7wlukIfBoxJd6pDjphVRJLOMb+/iBQOQzVDz4aEwOghe3S6rS9IU6ReCv3aFC
	 sq3Uvv2PNkAsfq7Vtc8LD2fSx9AkYKEBNN97JTfqv08hqNJM/CzF3EQk8wyFKKsLuJ
	 mK+hrOL2sex9uCjB7XhSg90VAxgmC6n3+zM8n/GzKEJt7cX1v0WeQlE7EX6nTWi953
	 l7Tqeftagt9XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A13C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845399357.8849.5354975979793929055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786945915ee3f0b95a41535f2a6313f88cdf707b143684febefd709df70ccdad
Date: Wed, 28 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748453993
