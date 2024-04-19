Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D531F954
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713557423; cv=none; b=P9fHI+bAlhz038A2upgHtEUaKwtiYI2P+e/nRkmeuIJ5nsdpdEIr0EkVIVwZ5aJNqU/UB/BSV/O15mWdQq8XPmDWVwpg53920SuoC5ZchKhvtmIJjB8irlCHoiIjV0BPShlm9FZt6wpFoD+naQ4E/n8GPB3/hneu5QACMkBl/zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713557423; c=relaxed/simple;
	bh=/SoBqjOuDimmwIG/5dipk7J+qj4Eqqm2WXNm5DRPfKQ=;
	h=To:Subject:From:Message-Id:Date; b=NVgbZa12HIWFEhr9Y0O6bCeAn3lEVcekEv2mGOE23bh9cet9p0nwP48rYCYCr6t63LL63nCa5U2bgU2lLFUpr6EBxfHIHdFpZIh1BlUG8gOryC+9oMg9bP4IXa4L3a6olloYwMyWYT0d781FcBQTTp6bMr2PBIhVkHJTYl+Jd7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1sGYg/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1sGYg/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1514C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713557422;
	bh=/SoBqjOuDimmwIG/5dipk7J+qj4Eqqm2WXNm5DRPfKQ=;
	h=To:Subject:From:Date:From;
	b=l1sGYg/1/JmFmV63su3OSNEIqvhSrYoxcs6FMU89COk1Te9qcB7dWu7E719lnqmtS
	 Ket3oYcW4C0zF0hi7v+0O6ZUayVqunFVzSUpB0DdYTmX51RVKjranb1/Bk5CCLG5Ha
	 b73IAe2Dgb5LPqmLx2SAOmyynZUToqDzHA2mZLyXUMq+re8diUVXV9Ypdq2qFgd0Dk
	 MlS7cAmGdyu/Am44OxgHQWr4bS4OPYnbbu4rFpg4MeSKW9l/e4qjCSydm0OuC+S1LM
	 DoTtor5nReAeGE7CapCKDh2yw0vPCXmHdonVsFv6mryRvN300XXxrCIXWZgHTX18HH
	 zuAdDRCdmQVGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BA2C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 20:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171355742276.2769.7210078163292589776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb10144480d45e055d648624b67957ade6eb0bd9b4fd28bad2d7e9f6a0669cc
Date: Fri, 19 Apr 2024 20:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713557422
