Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6569B17DFE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755656394; cv=none; b=NI9EZ4Orsc0uADRdNekjYoLYqIPRLMHvNI9niqR1kzV0pNXU44DVDv/PDKDEx5ojSHBw9Z6y7bGL51xNP7jVsqzkD9Ngob+XHEA8zBSLqYxO9EmkCNsD3JGI8OhQzm6DXXJR22lRYbEQ5rYHbMpX9gJKJm/PJs130QW73flGpcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755656394; c=relaxed/simple;
	bh=iB7jq9wQ9M1T6wORJbBFQXo4Jyi+TVOQoOerXkqUctA=;
	h=To:Subject:From:Message-Id:Date; b=dr1aDTUVbQhoOAMMYoC18rxMrKtX3akKo5sOzfi6Rg82eIxL30hnbGYzuIvXI5Y8KCsA6fEkAeMdkYW3jk0xKcG8B8ux+RVfCWyGw5S2lg5T0yjegfZAyucx+GNdhUwrlI+sXg8ZPcDe7RweHujQjLQyFfCO8B0KE8IEtQNWVVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwWyLdde; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwWyLdde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A079AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755656393;
	bh=iB7jq9wQ9M1T6wORJbBFQXo4Jyi+TVOQoOerXkqUctA=;
	h=To:Subject:From:Date:From;
	b=WwWyLddeTw5ah5hKBrhfkILaSUJds7ZL3oCvyy78D7vxSe4ypGv6kJYPNVSfWbT54
	 KjuEx+HcTiGvWHgXF2Wga+8gunCQ+230/CBfFVg1rCXYpUGhQ6B8gtDyoVPllN3vLQ
	 j1H489wVDm2hv0jZS2vD40hx5WT/dcfFwX7ETtPqtuXPwzIW6ewl0VnWl98ntFsHHh
	 za9E8AUsFALcntNMENftEMiY2dZyxTJSRhicfuJUUQRx1BBmhVnQ4QORw3Cr/4KlbL
	 D8v0keVVDZiMQUrE1pXM9vav6G8It6n4TYancCIVsibeahTmUS402o9A+bSyJgktxR
	 Z/ckHgI9iyTxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA6CCA0EE6
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565639357.20757.1571923510353719760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adf95d02ce1a16ea4141c7a373c39960345da86318f891b598aaa1168b073f12
Date: Wed, 20 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755656393
