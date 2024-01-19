Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFED72C1AB
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705654697; cv=none; b=KwJxFqECyTowOX2lUC0mDcWYt+ECM55jk3JetwywwWoamQqJZnJUNrKLXsJpKZr+PtTWwJ8vfw+IWmebi8jANMbJSzIdzYtGs0eaf8MGrpZECoUhHOe23hD/y/5+6uqNN8trNPg6SN88p6Hc9n3hjOuQXIzNe4dNrH1mGFwt+mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705654697; c=relaxed/simple;
	bh=g2Ua8j+cRrRWsQuxgYN1gMPq9Do4zFIWdmuoQbcNIJI=;
	h=To:Subject:From:Message-Id:Date; b=CUSsfKE7U8wG09JqHvI8JBU2ebnPGkbumuQTZwmddU0A6NFs8HtBCb1y8xA/TEAVtEoM5kYN1Buszpzsc8Dip17DW4IEfnVDueAF6ZUhmgtLi54WA5Kb3qZpFH00nd9cd8wg2JFpBetHqnIhDE2BhuC206Wmaa8o1uOMXGaMUqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gi/T2CXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gi/T2CXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CB4C433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705654696;
	bh=g2Ua8j+cRrRWsQuxgYN1gMPq9Do4zFIWdmuoQbcNIJI=;
	h=To:Subject:From:Date:From;
	b=Gi/T2CXBKvuYL2VpbdJg8g3SkOHCZAIkBCgaBFoosy8MoiXVSrlNoPCU76h9TQTFE
	 ukuuWw1U3I0DvuWpdBWQYjhCtsohBnvMcBrTpBiAtCDNHMjaRJWRLFYajWvc0wBOzR
	 KoGdrzt6DA9aaNUhoYnBj/6eTu15Ik13N35T1qwvY95AdtlQXPYR0NnVpCjokT0EXf
	 UJ77Vhd+/us3gxgFHEXzIcHCrXtXrHsKHUPrMndiRISypGTX0D6p9ouI2Y/XTxOa7K
	 ERNBrIX37uweluomFmWZVHNkzk6NOV/5Et4MHOZYp3cOqxVcAO1FoNGKk9+FGr8Oll
	 26T/M2Ye/oZuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62161C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170565469638.31700.9322034413133147615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be049a6498560f2c611ed3df08dfe0b2b2012991b24415542439abbbdb14c2f9
Date: Fri, 19 Jan 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705654696
