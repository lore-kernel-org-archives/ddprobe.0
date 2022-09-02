Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F333200
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66793C433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662152453;
	bh=4gFsc4FFu76yev+nEHCVlbFiPl1nSXt+mGN5j3XmTzA=;
	h=To:Subject:From:Date:From;
	b=P+XcfFmlzXaYabb+wSDqWmQ04GtBSwqMgf3BWOqo8MzSL6fRinWl1FOIJ4TMjfYy6
	 aoWEAxaYtOLy5ph0aR2Jg4lm/rrYT4s7ckuPioTUkLCAaw3E3TNX8N36AxZpq/gvy7
	 E3NoOBCc4bl0Oa1i+OZ/G6Xt2geV18JhdYk1/xv5RqMjC5Qol67bXu43OEE9Yb17Tr
	 y1WNSdGSp4J/0YX3gd3vQ1fdY1aw0pfp+wgUVgEoz5h2wpVkqUz73Lt1hkXIOZ7oGt
	 VWu2bUQoX4ciJAeSimL+VO08GajJziUnjJDtKf8kpU9J7zSfWR5Ys4tRTHMzAGExXC
	 C/vvtVQJG+vRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E14BECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166215245331.14134.14397293267935636468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf280309d4724c2456ade94358d4e1e6d581d46097c93568a18bdc497b0f3aef
Date: Fri, 02 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662152453
