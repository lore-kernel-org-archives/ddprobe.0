Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4D2199E89
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776315454; cv=none; b=Y6nYc2YCPuMc73nbo3vuysIEi++2MlKZqac31fZgayirQfLiWBV4yaji5dEuGeouQsKascBmjTBdUenHRHCWJAiRadgJAf54BHeSJPrpb2Dfku9CoE6F+fUlCswP/eVOdpv829FZkos/rAVDYb3yaudUnHs1nlODD/CghReQYfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776315454; c=relaxed/simple;
	bh=+9S0o018U6L+JTUvFM9lmj7CWNhJTZrTUVx3USgAmh4=;
	h=To:Subject:From:Message-Id:Date; b=NB4PCnnb5MAyT1O6Hm4qGhrJa/MKrByvB8613sInyE31EtVyz+oE7pPV2h2IVumEgDnyWwMUbBzk2ma8qmcLdo5rzy7etJV75021gzyOE0K2hbnGfryigLMrQaMxQyS/3g+qAULEsiJWn4ol+OD3bWqXoEvXwiaxtEYd+8x3RqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tf6dYLuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tf6dYLuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB9BC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776315453;
	bh=+9S0o018U6L+JTUvFM9lmj7CWNhJTZrTUVx3USgAmh4=;
	h=To:Subject:From:Date:From;
	b=Tf6dYLuJNYg0i4DXAKYkzit/g0Kbeta5huBSF6/zZAYLKae2vECUBxoqYuzRl34Lw
	 K8Sd2msa/Ze6aKcku36cMhBCLHmvCIgcvMu+2WEMfEBkPQ1h4n7b9oct7SzCZicf9M
	 nHOT6VU7PstDrr8s2noIt+lgMYE79rH3SNSejLTjLbdM63GkFdrXe5aBEsN+YFpV5n
	 ccUA5XHZvPqVc45M8bYoPOA1oAYxCeMKDyDm7kk6dyRGoyqV3Xa6pj7j8Cez7k+Kxw
	 DvZw3PZjprXezdaa1TZZUqh3dzPrnQepOsnmZqQ3iq1IcDSknD8X4jXcllLzGO0zXg
	 Ag8z8yKhiNGjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F5F433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177631545368.27983.13201052640656141430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e9900122a5e1fa4a1ca1f682b7f4be8cfa7835a100e838b56890ae677877e5
Date: Thu, 16 Apr 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776315453
