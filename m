Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5A83D57E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720380983; cv=none; b=ZWXC6dqqQEA0karFA+/vAR/fm4SDZVVXfvEgbDc6jTmEc7GJvF708H25MjXfhY8HELPoWSS7eBUGXTnyHBn1Z6hDRumvlIZ3eseRGWDVpm1RQnmA4yd6IIeLOVyPLFJ/t/DX4WwGF0YtqN+Aqb3SEDLx1VlmX8yakELRqbtwr20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720380983; c=relaxed/simple;
	bh=NuhshOmHvymoUBmQnIc9ZIyRs/Wg8/VA18Sn9mmEr6c=;
	h=To:Subject:From:Message-Id:Date; b=jCmbsvkZEIY44NWY2usO/opUIV1wAgI6jrYa1aQQWDSO4n+Ha6zGeQlrXNlg5NjsKeFa8Hge8sOYiqEey/A8AEWC+GJPHQw0t4T8FPtQaut3rGLtoWFJ7sQGmfbk2rjCz1vohtYQGSTU4DJyf+A9y5LpMeRkQ4UIvnoff1Ufj/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xo6x3dLf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xo6x3dLf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DABA1C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720380982;
	bh=NuhshOmHvymoUBmQnIc9ZIyRs/Wg8/VA18Sn9mmEr6c=;
	h=To:Subject:From:Date:From;
	b=Xo6x3dLfEbRNRDa95dGUW44pIN42fL9/0pcsEcQCwnhfgVAfA3HoPGB+POaFKDCZ9
	 2hsq5LxNkzL5MJPGlK4UMFWRQnR8aqGUendJfZettcwiupwUmMEtoESm5q8bE/dCNj
	 FxcmqsGix7UUvSueM3ChNP+ACaR6BOpXGyrQznYcPtOi1YV2Ae3ucdOu18B1h+Thd2
	 k6hePpYHGsVCjRLpDEc/1Gt/JvQ5rr54Oy86+t1KucsM/6aHXZ2bu014Um8lq2Q/RB
	 5uiLZnhR3UNxh87Gj0xLHSNJgifNpRd2OPjDnKJsXtjqHxQLkE18h+cPHsCHXm66BH
	 JVaGFxI40iz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5723C3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 19:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038098277.10744.15626176276246861356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f8325635eb4ed922069be5ce27e4466a43298ce5cfa4c4dbae720257fde325
Date: Sun, 07 Jul 2024 19:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720380982
