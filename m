Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CD138F91
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736794554; cv=none; b=t4OYDKf1yMXoLeN8hYX2Qf5K48Gf3M/LsmiJbV1+IK3xdNMG8p4IeiEV3JwmUxrEh8iWOpOKNf/Q8CAU6r5Xr44BFw70z4ZHE3MAvUqo5V6bS10bUhKuGZq+W8KQNzlcQk11WBaywTiSUF4b3orgRrGi3wsP/sun6UWM6sP/Pmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736794554; c=relaxed/simple;
	bh=k7KdwxYs9G6J9WG5juXwGDafId45B902ff2IpPCF5MA=;
	h=To:Subject:From:Message-Id:Date; b=I4V6iB4ZAMtbn7E3uIzteFM2jDd23NkNEwomhlPsHvgB8w8qtgSGYu8+5MbgFrEBzOlFIqlu9Lo6h4KGO9nqz1rpwXyPNOurOkrDRDN+RyNV5urdt5jOjS90DdSIgAVtAD9yPJZBR6nQMBk/iv5Q1yZR/25DwFDIMXGrKlu6qrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szrfD5Ve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szrfD5Ve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F6FC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736794553;
	bh=k7KdwxYs9G6J9WG5juXwGDafId45B902ff2IpPCF5MA=;
	h=To:Subject:From:Date:From;
	b=szrfD5VeYlfqewXuLiDEpfieEnTaWohr2SAUVT0ZYTnvroF4pEUZlNF3Aun2dg4U9
	 x5iLPsFTK+bIjx8yQtHS+HbbcPw2uYcUSOSHHxCwbHtxBqpCOdLu1LIBQEpdQu+Hkd
	 xtXXx+ZcuQW4U9YxvdYEAKaqQPKmT0sVUQDeYeZEXiR3PMgG7VnCswq9IWhOdU+Zgb
	 d8TcVjAJCohCk53wQLOgq6itYYrwUku/GeyAEuZJi6TSNVZRAuQu5IEKsLkdyEoda6
	 p/PKhuyBbrcg/THc49ugo3o+BpciIR4vtT6zZofPuM7nYjLKN1xgx9bPDbmJ53QKGX
	 DEpwLNR07tG3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAF9C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173679455362.22496.5418887127504956411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbaaf23bbbcc36ff9c55ad36044b7d61166c88a3f551737de44cf470f65c6ad0
Date: Mon, 13 Jan 2025 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736794553
