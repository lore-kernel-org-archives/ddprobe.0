Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332192C3251
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749015594; cv=none; b=AwQFr+wXRR6L/J4qNfI6jAIuj3+2JAfVTpqVJowrgja4m4TDxnQ6E83G53AcGJOsGjRjoVFFP1i7ZNs56QEr1LId3osnh0p7PtxSrYdIQrUEMe8jZ5CKOVIFO8L5RATxy6Pohsb0tTdqlyQfmFt6S+cAgMm6wrhcTL6v+MXJZTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749015594; c=relaxed/simple;
	bh=j1LQ5PnjGNNM9shrSmnSVSMUgOtW6Hbpx/pEQB4IEhc=;
	h=To:Subject:From:Message-Id:Date; b=h9tQarM2XsT+QFc14VkvnEyPQLK9jQ28X+PsMX2DBvXlaPrVnFH700mI7Bj8WL+52LX70ek1pZxgV0a4YLSld9FWx7qBysKEnj4q/7Dceu5sRC9t+QwYGu7jMrcZSRY/U+Tqd7pIvKWfCL5m0zAwA0R/lzd6fENldKBS2NHsBaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUsYmGsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUsYmGsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A2CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749015593;
	bh=j1LQ5PnjGNNM9shrSmnSVSMUgOtW6Hbpx/pEQB4IEhc=;
	h=To:Subject:From:Date:From;
	b=eUsYmGswO+ralZr/V4VB0VlpociVJbT6dz5rUiGfpX36IcX6zd5WK/oU5UiSOeHt9
	 kp3v3PiRiKpTYq0x9It5hDNpvWlALotbKen+ZAkMGSuXXq/sGV0zHTibu2xT5btsGA
	 7X1uRo9RNOqM5imNN0AFxIE57WatgJ6wQQRk9UxbdnSPf3Bakkf58XpgRugKU28KJ1
	 BLyIUrDwGr8j9jhf6AY51qUTOk1fZHCBBvWnZAC9BxJDWC3KancoiL1tTLb3LU9xyr
	 uu3zcPmbDub3Rj7pgIgG2Y10DcgXnElvM/t8qI1LjqUPzHBxBFzwAddc7d2iCfP/4T
	 yvijP+m94Kj/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB15C5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174901559357.11558.8074633210556260005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324179be85d8f64773bd5dc6952203165181de25df54534cf6b88a3ceff00b04
Date: Wed, 04 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749015593
