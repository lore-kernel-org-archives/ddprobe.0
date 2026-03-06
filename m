Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3B918B0A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772757293; cv=none; b=jwqLpZaVm8A/SaQO/JQrndyqbtZv4dIkYnEn18/OqmJ43SuIhPhDXEp7xn0c5GQDpsjf6zkxp/S7ebveWGDTVin4hPJmAuTBHUP7c9Dt3tRUpgpHSZeBnay0EanuTQMfdel0u2AWUQP+NFMCgXHKcEUIDM/aEGQLt2MuRudcPGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772757293; c=relaxed/simple;
	bh=4ac7bUZBqS7eS51In7DmG/YtmUEGrn+iaFl3TRpRP4w=;
	h=To:Subject:From:Message-Id:Date; b=p9Xuzp8B78FkLQyvrZu2qN56bH14m8tcGoh0r5CgiN2AbfaMt6EvW/lqhewKk7auWnoGttjJyJvz2b7Uzx+u/Xox/ERD8zMrNST+Ec7bygX2X80vdrFH9ljD5BWAkbw0gYFgByT8jzZWu9u0fsDENqPRWUvxnqSfv3PIo/iYVYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8Jxk83C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8Jxk83C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73FCC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772757293;
	bh=4ac7bUZBqS7eS51In7DmG/YtmUEGrn+iaFl3TRpRP4w=;
	h=To:Subject:From:Date:From;
	b=J8Jxk83Cu8lRBb4TVF5pIXi9ldnTytZB4vKzgZCErS03fwlGWFJ2ETHFrBQLAzLSg
	 DpgbNf7eKRY37hQUmHaxg5uTchHjzgIAob6pvaPhQNMm9wkTR/pIhTbOVl4/n+cWJl
	 lSWjpmtX8sSbvSQ5lEorMtC3fY13uKd1yQCxY+Td/QghemyxdVNcxpcapgeSC0arUT
	 cQw1hVf8VUkKZSLa3X5ZcQU9aA/JJ28jyUUP/I2Z7IP47T3yJQRmDZCZfdl0H1aX5D
	 0JcesYpv2qBgSnkYR8LfUvzHJ+mcuqv/pf05ZA6tnREk1DbRZA1TCU7ZU1UcfNqnd/
	 b4uKzxhvKyVjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A62F513E9
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177275729358.7406.1526428114349612472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbcfd9da780fdac945e439097b969acb138dd419a58419d768f15a1f59d8c32d
Date: Fri, 06 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772757293
