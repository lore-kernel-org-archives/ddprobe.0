Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659F45464E
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744936794; cv=none; b=KqN5ZBMr6ccY4t6+Oo01DeGDM2/NHV2VKIxKxtvnOTqe4cPLtf6DJSRrVdef0QPUvUyPqfXr3KqP/BtEtz88s/e7c2Rz+tVW2BtQDUGaauiNEutE6MuZ9PfV2g4zV2AaCGAB9Dsg8Ws768LECo7Y9xYSQip7XGeMsyeewpv8Dec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744936794; c=relaxed/simple;
	bh=4tDGhiLecLmqgIEduY2ZSnU+UUulUE+L4xWlzAr/fAY=;
	h=To:Subject:From:Message-Id:Date; b=lB+UJjtw28oad7Lt2adLctEcct212y5MJE+tEMQtjcQYuuepS4Q+7Bbby6PCtc9+EXhXSBpfSH3v87TUdg2TWRFqr20YHS+Kdnj2iThKMaW1mTVClTeeDHS45Y0Q5HtPfvqnIWwrrMf0m+eBROh1NOGQSbWeH1bavSBgS1ws6XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNBtYuvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNBtYuvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7FEFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744936793;
	bh=4tDGhiLecLmqgIEduY2ZSnU+UUulUE+L4xWlzAr/fAY=;
	h=To:Subject:From:Date:From;
	b=LNBtYuvhADgDeAIzzDAflbDq7Sm5NhYKEkLyZod4fYW8f1VWwwkci/kCkZX7QVvtx
	 LCUfvfx40XURiA6Hwfg+s+1+TnKGaH/tCEkfAvmyMs9m4v48EsaZgCls4sPg4ITj9+
	 awQU+MQzwsdGksuG5wEJwswhXmliYooEYk/pfoYDM8ONctyJM5ymAkKuoONJkgNjvy
	 lJ5mj1XOIs5eAfpWifxc4xVCWKM2wlhs96JbksdBZS2HemMKCZSsACNPXqDmDWyF7c
	 dNq09oYkh2qR4z6ipPHv0Var95PpHuWCcqKAXk/V+1il/dUBrj+GoQh/HuipkKD9TU
	 LzR9idVBJWxQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE64CC369C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493679369.16360.13514161739289889018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6b83baf0fa6d61958ee7f66adcbc13c5f1f5062e03cdc479fbcf7c7ebc4ff0
Date: Fri, 18 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744936793
