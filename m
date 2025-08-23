Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8CEF1E5710
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755948593; cv=none; b=q1fwSEFawEemi0aQ5hlxhSZv+JMZFnAJouuZ0WeRalzGhryxiq4Yc10WOS6/Z8L1Rh8C/83WU0E5GuUrtoDFK7u4j0o+8ZFfNpVsXVwgCcvA2DtKe11mfU+Dnv9R6KHmtbGBgiOs+vgXebKEX6BgSvggJLyPhdIK41fZUUIxnMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755948593; c=relaxed/simple;
	bh=1p2NWaluqAIuRYa0+RaW58B9E2hXGU3kkeWSZVdyimc=;
	h=To:Subject:From:Message-Id:Date; b=Fad5JOL3q1mpnMe2WK2E2bSWrePm4bqTNaekYw7MswygOu1Sh/cBLRLzsO+WZVUscvL4fxrcclZgY3J4sUX37HXOIK2cMTzAqxwOgP+tASfUA3GFuLRzABKfaRL2DHvZZYYa/++XW6kbyrOCtWe7k7t4ELECH4kyykKHEtA9W34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTgxZFrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTgxZFrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52A5C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755948593;
	bh=1p2NWaluqAIuRYa0+RaW58B9E2hXGU3kkeWSZVdyimc=;
	h=To:Subject:From:Date:From;
	b=eTgxZFrXaNe0ULMlAvK9eVV6qWD35bXl2bhWhA4D9/k+QjoWfVLGru+rxexEe1DeS
	 OWsb7A7vJuyh9ZfvxU1+dMjutOKZR7PNXtxCwiODoKwiZ9IOBWVhMDrNIfsm8eOPG9
	 hLXdqo2WgJUz5ch362iuNDNOEmaw/dHqikE6f1YDMK9ksvmBtv5x+Hd4cxBB4an4jh
	 8q8NmxVMi4Wsls9fASY2B/VuMpcGOWCOw5sZejThqjxBs6GwfUoviYX/OJvP1y39ji
	 mEzkdiVDJCpvib0bDwV5i/Tf659vzL76FeXeHNVGv4hTYhn5ysjekmauCIEXuqHVhz
	 beQDogFoa3iwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DAFCA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594859357.23863.1496429162094280180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7feaaf441f2dd8c743c64200dc0767508046bd28ad88c012cd79e0ad049dcf73
Date: Sat, 23 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755948593
