Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AD94A08
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707182897; cv=none; b=krGwzo16TCLfyYhVe3o3/iwrJ28IzpznMDt1YqcexCRXbDI0ODjDwbdd5NJ+P2EcQ0ChyDGC6ujyPy05lkEEqar6FyRG42b9eXY/PHtql29tI6zfYTQaYvh0Bom7ziEtcfMQZknrcvDTyqU+AV2l54HeEnFOCCeZWWjuDl5L1rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707182897; c=relaxed/simple;
	bh=n12foFJzWSomPiDnxuVRdOlPX5IiTQKi4Cx8yPBZjVA=;
	h=To:Subject:From:Message-Id:Date; b=YYj8LxusMn9zWL/z8BpLnsAc59Fjpzp+jVyn32EvMcZXrXNIboC/O7KpcOPU4y2iQxZ2R5H4CfAEgzTuYL7IiIhssaFk5NyJxTwuDUiBOINbyaFWiplhuH6ukde7o4ZTApKqZgUgK6rHRaUXk9mgEovNSIIJAPBL9HqI6sfdSQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrNyUUqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrNyUUqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A868C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707182896;
	bh=n12foFJzWSomPiDnxuVRdOlPX5IiTQKi4Cx8yPBZjVA=;
	h=To:Subject:From:Date:From;
	b=OrNyUUqCjkvW+uWYxXMpbGt7TZJ2gSuTmiJ5Nd07Luu+mzK1cei4cKLNSJECEaqOG
	 lplxk6ZORhCFayD+/4ZIJiBEkrzen2LL/sVK/fxVuDv2pOGmeptKEOFHU0yZcWGIWh
	 iF8+hvO7slsiAJq/T9HigxBZ5cXRsr5L2W++HNpKCdlM62EDVfKxSyiu7JRxWrNZzM
	 K5wNnZEV5bmu474D4g2f08enHHbAsW0kjr0YK8kZzAsSETQXgC0Vrie3XcUWLjr3Oq
	 O34y0kPM5nwW0dmTUSxRg8lWsP3hreQ6ZxTHlg/w+mVl56Mo0NPrB9AvZiyxW8MQaL
	 l9wRr9lWwuZDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E748C4828D
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170718289638.1248.17056822637435415227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65be1f3a372320cd8ed82701df1565248dcdbaeab74f258c9de3a701af563f2
Date: Tue, 06 Feb 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707182896
