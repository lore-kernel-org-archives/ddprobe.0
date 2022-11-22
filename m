Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA619EA6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD97C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669097454;
	bh=B8DqMZoFhWCksEDy+tGiOsnb9WPXSMH+YEfCUItzuYo=;
	h=To:Subject:From:Date:From;
	b=tFpziucvLyMEP/qYyjEZFtzk7WfTkon1kkon92ERzQjrmPqEODFFKmTFWm/Wl0b7N
	 5jpHDTAdeo+P6FW5LHBLA+S2wfkmB2DFvLSMT223YjypbyLL0SYIwudyayWxz6EHJH
	 FJs9Y01TvGWljwGsjnYr7LiRHFtHiZ9z2VNQ09RVY6D0x8+QMOhmS7hxCIlEY4w8Jq
	 EAUWRcumaoXCYFnKqd+oRwPyM93X7/PHjr8bYTPyZhvRRFxaO5+uPLiotbm/Gs5qgP
	 avFoLGxOkOI2czgJSOyXXwhsHEg1WVDzYGsw9vKxjLFx6EXQVjDO7mVwvQIvHv3jBB
	 4rubcygwsGpRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522E8C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166909745432.12054.1853590355945509958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a51e1642f9c507b5c7bbe957c51b528633b987fe4fcf9ee639c56ce9ddd54b
Date: Tue, 22 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669097454
