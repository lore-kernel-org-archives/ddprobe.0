Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607D73446C5
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788022234; cv=none; b=ARbSOoDnRz3xrFihAF5dmg0QF6q/o9yHcAyS6eBy+XnTOKI1HcAVhnWg6wiwHXVotLpxMn0b+SgI6SSJM27wj0KA/E7DnhbiqD7zuJFqZSBo3vnMXNQpu6EsJXYGLUXNxCvryg/v87mXcyfPc6DowjxC9PaR9leahuxBy6eMk44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788022234; c=relaxed/simple;
	bh=B4V9mAqeijppzBn8b9pQyFHHK34jcORd9Y14YiTMLNA=;
	h=To:Subject:From:Message-Id:Date; b=IlzlDhKR428FToo54T+298a4eLQVedHThSEqrlNXwvKF9gERs5kWbBs2S2oBbPdnDeEOAJ8X8pz/l0ytm0K+bWMGEvs9J6sKaFAnYL/5NQ090k3nU01ApaGtS8Vajy5zm691HnD1vRsNOX63EhkgTqNQJHhop3p0JaPjBQmzNZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZrAezr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZrAezr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DD3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788022233;
	bh=B4V9mAqeijppzBn8b9pQyFHHK34jcORd9Y14YiTMLNA=;
	h=To:Subject:From:Date:From;
	b=RZrAezr2luUSA0vXGd3bYLJhE/zsEsu7Wwe53C2c4W3XPSZYLyUU3qjrL7HnOYyyV
	 ZHgGi8130WqXRNI9dS4zu8Sjc3SRSs3/lFoWTfgzH4nQIxqSGXttMBvmiQKJVSQiAh
	 +JJuNbL5/3ykeWPDKBJxZjxSk46Cv5LGhRMfDRBY2ix4u391EBzonkhChoxHI9td8L
	 KTMaZnNkjCCG9aL3K9whBf7YrhT0rA0Z+TmzDcIgS5pYEK9/n4S/doithQa2LtVAq5
	 10yK0avaooLwuJN28GvSL4RJo3XMnxYj+YHSF6Cbt9SuA+VwktPV4xRCIalGEjTCPK
	 zEkqsybWsqbZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0652C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802223368.2995.17778878783257970957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 519ba3ffcf7b79936a6b4825ab66540858d36bb5ae8ae721a949981a46ee963f
Date: Sat, 29 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788022233
