Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FE7EA2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 02:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F5DC433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 02:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680833285;
	bh=TYAfBLI8tyUSelKH07FJXi1uuB6P3VVhFEdkl+4aooM=;
	h=To:Subject:From:Date:From;
	b=iJkOs8s1pjzZIzd4wp8qZyooISYGWm32kdUmFFZXoBbD7BWQRo8CTeP4lJMRihthM
	 q8GecM+c5Rzg/xacbDQoLyiqbZiaKmI5/Y6xSslXf8UndFoD2Q8pW0SLiivtezPFVv
	 2xi+evNuthsnyj/Z8Wvr9bGWFdaZpJiFT/AgnVksi5uS9bg0jF4dX0wZHmDwQoXlbX
	 1ZEYEbkbTq+XuFx9ohIj9X5exHRBlBS4brjl87DaLUN3d+iAiqHCpbztFe8Vw2Qcq2
	 wVn+lZGBSPkL5l2VdqHhXncv5H9eH+Ifp21gKg+kQgEjWUQdsDCa+8ndCQMHybqZ2U
	 ElXWiS9Kno0wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3CEC761A6
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 02:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168083328576.12956.16229563836216390553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa398056008a95aa9aa2a6712ed584a19ba25000b8f19e6aa0ba74faea1a3076
Date: Fri, 07 Apr 2023 02:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680833285
