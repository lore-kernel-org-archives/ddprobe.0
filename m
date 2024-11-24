Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4789214287
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732438554; cv=none; b=HSa3USKT5beoDi7mMCkfTFK91PBjUpe+vUzgiBpfzwoBSlZzKd55GJUq9gyRH1vNwPW1GnE9U4+SYi7sestPKUPkxUqPx4LuOWLOAGBhW6KlenRiLP81NPUHrM+Ay1vGVGAYX2jW/1cXD86Efwgr0CVFAIWnPHG/B+RGgIaKooU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732438554; c=relaxed/simple;
	bh=eiTZC0FxvP+ihYz6BeYzZV0JvsUsQZoIgbf4TGM9HvU=;
	h=To:Subject:From:Message-Id:Date; b=aPbuJUv0QmnjXf+60r4iwTimUGKCcau/Qeij83LwdQLHVzM/pCL8clMxEsoBYpRWrcuTL/CCjlXEWcqrGwmQkYVd0zZMp+fPQ/qLisUj1tO1vno/HgkAtfIiUHM/v3wObCqwY4T/Zm3FAkkPlBrR3jf1MbAv3SPyNil51JlQBRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDjXTvsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDjXTvsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6100C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732438553;
	bh=eiTZC0FxvP+ihYz6BeYzZV0JvsUsQZoIgbf4TGM9HvU=;
	h=To:Subject:From:Date:From;
	b=rDjXTvsEHJYpgFSZ8di0CEtCWREW6yzhMH8JooTxwI1ZKYIqSRvaN/J26HNENC8xO
	 AYLnexlYOpa7XV3OoxODxrBwmzlONncuLB+AmC5iHKJb1j47tMDg8e1n8654fih/ck
	 3xlsXYqsLyQokVpyjo/aFBPzSH6nK1lM35NHFjxvAwghJbVEBG3z2qKMNFs8lR/GZG
	 EH/XnK+Cq9YQNN5oxx4gvS0jYhmGmf44nonQ9487Rq0QqQNwaoGvdlr2gAoC5a3GEQ
	 WntJYyUn2JQTTTff06ASe9OoBttcpAa+adprwO5Kbk59SnZbJWLaEuOcKy3H4IVJGp
	 5AUV9ZtVMOKeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00FEE668A0
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173243855360.32256.16368584498835794621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365220432640725195bfb3cb45d270819b0a77678528c7fe16b9d68e83351d47
Date: Sun, 24 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732438553
