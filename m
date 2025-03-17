Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351A021C17D
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742199594; cv=none; b=qdTsEKOlurzBSAjkHjstT8j4XLMQxJnWpBBEEwJFBdJduzuv4g9AncPDWIDtbCUrOmuwQAa/L5eybqjECcziAxPNEviGM62G9b9TlBhXvuRnG0DBUr6W+trhOvl7wlY+NgbMzFwg6lHWZzzWiEmA6nKVr/4ogvDaIPNDs6GHduw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742199594; c=relaxed/simple;
	bh=DnuptDMgSeVTYqGLuo5Wl9FIjS4T7ncupkmzwJvmr9g=;
	h=To:Subject:From:Message-Id:Date; b=GlJ17FnasJQagWJGXn/NyNK7ot+6+p3Tc+lTuju7c/Zn+rDjQBE5VM22Cv4rWSbq33iCrvC25kUtd01ooZ51vZQi1gE8FE7xp6vPWF5JOdzHwd9w7WZ+AYubg/ErZLVNMQ1pV/dFsoZ3ghL4Gb3G7B7eU81/dDHxGeBYIclpo0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgqN1F06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgqN1F06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B108FC4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742199593;
	bh=DnuptDMgSeVTYqGLuo5Wl9FIjS4T7ncupkmzwJvmr9g=;
	h=To:Subject:From:Date:From;
	b=sgqN1F06UNbWlpnx1UCtBt3kN4pEnMWEHxyESJtb6yvtZZv8/M+L61fxomu9J3yfW
	 5qp+t++v39ZsK6ji+KVhlyD0wg2e3HxOkuL1tQM19yS7KsOqxccDfeqnTcK2G00W8H
	 H+NOMFMVNfH4c7kRXhPNpBW+aQMc+dYmwfuOrvplRKwSVpIgumU46UCrSNzAFU7fbU
	 LoaNXXPLsdmRscjFYF+pF28LiPpLXgYA/QIH1KhjZjmWnevxuDW+Jzv+8zHp0TX3z/
	 /iuHMTGOKiNtP3J74Nr2LVJGCfC+xLNXMOiDa9nrE5qItTVkVRVvfXI1AK3HUDIoFo
	 HROiWMIdnvlGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6C3C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174219959362.24099.13314771470191495283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3546bf47a2caa717e7151ce58a3bffdf8290608285da6ef95dd523884f85a4
Date: Mon, 17 Mar 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742199593
