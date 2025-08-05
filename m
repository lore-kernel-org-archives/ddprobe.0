Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E57202F71
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754396394; cv=none; b=PUX6WnVeQS6zUYHNLHCHiJRPLhTc5Zpk0BKQHjWCUQx/g3KZf6tW5qhe+hetWRx7mkCljvXUPyJjheS9IkN+3JckZwoCBIsI4CwTuI2rvrMpt6kYb08UWfCVdYJxrUdGFyFKAjxcxZBPt8bP/M4owa6OzNZa6jO7gvLSXYDUkao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754396394; c=relaxed/simple;
	bh=Bh2zbFVp7pbFumWFMvSutWevhGQcUoVWDnHoSl6qyF4=;
	h=To:Subject:From:Message-Id:Date; b=TxR46uve8Yi/bXfSagSA8xdj5nk4UiiUNOry/Du/XPk3kqhfCs0YYtKwLYaBt4c/U3TzM2gKMXZpcN64AAqX7ToPZUB5yx0Hr9xZU5EtO3CjMFhNDQfD0novRRy84CqfT2EHb+8mS5E5oReMTiv2fkhC8edVb12a/qTMg1yfxEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCGO8ZFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCGO8ZFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A97C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754396393;
	bh=Bh2zbFVp7pbFumWFMvSutWevhGQcUoVWDnHoSl6qyF4=;
	h=To:Subject:From:Date:From;
	b=TCGO8ZFsSV3ErkJnDkgetw6KPH7U5EEdYBV2QKdWPKAN2p5T+zqb5rz9MOtnVHhE0
	 gq2wr0XrY2e6921oNqA2LhmCYPndi+a4ENvWcs+LMQ1gbAzDP272UMQS6vAFdLcbOM
	 OS2Jp3RbCusJekso6qLrkQlJmL+ffYDOIAtR6W+Evtrop3N70YZsAICerm/q7KO8Mi
	 WuIq1YjGweIrLPTNbV0e9CT3FZ+mGDlQ+8Q9JzlxRBL8qTZ75ZFE+hJBRRuJEd7tSD
	 j1dv6VpJol97k6WgvSdWQWFucAqOyei7DH1+UdrUSJl/ybVJrQpoLB9wVoDoUrNMPF
	 sD103OPeCQ9Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C0C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439639357.17557.15910220961241075954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e20acbb13fcd49dc6c087dbd8146de5208f3900f6b03fabb0bd0eb06b2204193
Date: Tue, 05 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754396393
