Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3340C1367
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749319794; cv=none; b=gveqq4mvel3ITqgAKIDCiBqgsWDdKcX2UKS7XnTsd8XWqE/up5TUVdEF3N74aQwy1+LIvwA79j2h1bCpWurpeRs0PRkBT4GAnXlLNvJD4eA6xV6rEz66Bq65UmmADlIn4NbfCzhJwWzoLyl612vlTBpuXB9+1wCy/nLjZmfHXHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749319794; c=relaxed/simple;
	bh=oqKTCm72WuJP26/ivwDf710tDIzvSj2N7PRwUTNr4lY=;
	h=To:Subject:From:Message-Id:Date; b=IDiyDUyddlhrwwBEFazqsu9hMu/TKhCOklx6yAm4iF8WnXWeoLL2L1c13dYSq1+GGd2HPcabL6sKL0UwR91DCguRQlTBZwADWBomWwjwjTGv5gYWcw+hw3WhQKIkyyuEJzIpH/Niob0VB7LUoCaCd6D9Mvssp0nBmQqRexQjSFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mu9cbBqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mu9cbBqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D1CC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749319793;
	bh=oqKTCm72WuJP26/ivwDf710tDIzvSj2N7PRwUTNr4lY=;
	h=To:Subject:From:Date:From;
	b=Mu9cbBqIguYbU1+Dwvsr7HkL2Q3WzO2Th2OaStK6RuZhiMOmctL2G33VhN8mZ0MBW
	 nrMXvi96IVq1sQ0dQKWtXQTskuS0tvKDsS4rD8A/aDLVAFpuuvnfBtVPpHAPaBRVjf
	 nGmzAyiVnrslXF6rlv4Ls5cC1LwFDiHbEjS53mH7UtELutqagYQgYi1Y5DH6KY1DXG
	 o1ZLMWMYdD/Aygj3CRoV2NBAV8ILg1CTMbrYJAB0SmBd4xlQnsOalzA2RAZG6q1TNL
	 AcCl8ZEiDAwHAj7M64j7aVKYz34aLc8hvudwzBIrKVDQAQGAXSw0DRwGgUpXiu3I8B
	 7oy1e3qJScgGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E49C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174931979357.897.6336093576413709428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b26325d752fbd1987fe3e71f2492b042c38d89ad9e2659cb45cb1300fd8f213c
Date: Sat, 07 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749319793
