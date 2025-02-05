Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0D81FC0F7
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738778753; cv=none; b=U9OdgLrEaV+DnlPJy0XdGjHoUWIyY3sl669/pLxRQJzVWWVQi+1Stav3Nl4EpCviuIxeTclLJHAptYfNOUGri8XbASMEZxMVRIfiEKIT8w9gsNvxUQqzawq3NLu7UBHLpW5k5fLBd4Kep3knLatLwBJceYmGY4I+X3n4kn6wVt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738778753; c=relaxed/simple;
	bh=PMTypOsGWBTitpXOVgNFyS2QgE+0kHoSUF7rp/5eVS0=;
	h=To:Subject:From:Message-Id:Date; b=enfwEaXY2aI4jAEaRJ83LmvuqpU5/p/f/y+SyXInXpRBD76tt6ucTJ3FJ9JH2+t+x3VGEOnFO5dgbSsEVk0a7qNEC3e+XBqj/ZaKq3YsRJDQhEnZVgMZ2GdrwyNqPQ3Rh2zdicPuQMRCcT0fWkoae9gTnDtfRTRIe6tV+YvrK4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZzlaDxYI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzlaDxYI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09DDC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738778753;
	bh=PMTypOsGWBTitpXOVgNFyS2QgE+0kHoSUF7rp/5eVS0=;
	h=To:Subject:From:Date:From;
	b=ZzlaDxYIRzskvm3/88A9BStuI4KBFEze2+b2dXN8oV3SrT0pklOF1tcON0CtsI7NK
	 5DGpwPTh9jqd8Gzx2f1tGHDPsu7UxIbpVTo29Jc35FG5BCvHvVsnuFJ2IliVwb5SiR
	 737cqvSVr9mcGm4N2y3RQ1hu73lGci+7ozrtDJCByJiUrdkY7R967sbZNZ8z/hPDiU
	 4qcTi+fPp9ZLlqJfS20baWr9atzQDhLZeV4fau+0ruVlS1JagQ/oYCA0c6FTsdNyI7
	 M5NLJFD4qAGJs/VWPQpZDRen/auP1VsMPBq74lyRE5HPoqIm/EtSzVgzl5IpDNqpbz
	 RYkW9cH2z1VLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A625C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173877875362.21756.15231671943758701814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e900e04fd2bc8ee24554fe56631ed717ace01202b63034f7474ed712367d17
Date: Wed, 05 Feb 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738778753
