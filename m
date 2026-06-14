Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C6A139B956
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781435794; cv=none; b=E8APJ8G0B0AhLh04xLXyKY6Wl8Fvmqaaw0l8azBWtbssJvzT5+BAmILd9V4v0PUMK6z1T31eV2/owysipS2CRZ6lgZRQLlQL3wWgjJ7bs4wESG10kRoFYjNAWji9SWxNxCpxClYwj/hXZGEO7a254LWSaQ1E/3pPuWgzAd7u3u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781435794; c=relaxed/simple;
	bh=b6d73m67bhSNXSkxTF6bq4Gq5WihvnlePQl7pSmQvow=;
	h=To:Subject:From:Message-Id:Date; b=Sm1ZUe13bCg14yO2el1LgTvE1rpdcqKc01EGOmOTL1mGrdE/XYmfEDusmVKSQt3E4FjMKOIHV4X2sjBYmtJWifSlMfaZnz+UshuTaxg8hho2TB9O1sJLxKWQQEI2f48ysyOIVgm+Nb+/U/GRRpmVZmC90FifYwaiqMLP54P9jLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+LNwgqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+LNwgqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7C3FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781435793;
	bh=b6d73m67bhSNXSkxTF6bq4Gq5WihvnlePQl7pSmQvow=;
	h=To:Subject:From:Date:From;
	b=l+LNwgqjjUfC7afBeJCRTVbnoTsGMY2KHCbRaQHBR/51mydARDkTMcfJUixVeZb0w
	 dkfYhaKbf2fA9oLjPwKs1vD/mOuNVQw1h4bPYDqFVTJ5aj7C3/DRh1CESxEE8ZpDuL
	 10SH0JsyDidJQbpjgPYhqrCO/v3J5LuP21oHvSUfQqgoIABTlqRfw1w5hM5OJvmGT4
	 tuLWEvjY78odFT4FyAZ6arMdQtu/xO88wdEAtgjPe9d2zdVbc8ggdEmjdPqJXHxN1y
	 NotmQLltDksaAFfOe2rs0zLTZcO1+LNW71S5PJtYqIXKuT2yEbn7AHMu9FRa7VCkrv
	 LhPlyFjIAuL+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B861BCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143579372.26492.1160282345037045947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b9d302e0d0ab48cbbc93a6c6635299f20fb19ead4e86810e5c8d5a4436c6cea
Date: Sun, 14 Jun 2026 11:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781435793
