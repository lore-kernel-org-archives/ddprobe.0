Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD467E8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7PIHQK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8489BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698023896;
	bh=cUaMC6Shea7a9xCnJMLhKKLhb69ZOk4TvOwrimWhyI0=;
	h=To:Subject:From:Date:From;
	b=X7PIHQK5UVhyp2BgEiy0YiWkh7JViiKBMtaTQBrFocHaHrObL++rKD3VlXpUdn7uK
	 UnVqv1yCzTKdV/eSOlSTr8MXR+Hl/3hAgDcTLm1vYRvEU6flCeqEvHZ6Nim/y7NKf6
	 AkAufgfGpO4Ck5+Rg4X9BXUmscpuaQHsuRTvmbkrsx9VDZXd3d2B3ibO/IfzQhY9rr
	 nKgnrNR1G7ExtQ1K1+K/8zNR3XhKg1Xs3dGYTxEzpvo4QtRzWjgc8NKnkJvc4hmBnF
	 rVznjBH+nqMcDGkGjy8TFD+GVQyh5hkN55Ehze8ZNus5OcDKM35fKGOv0ir7Cgj+k8
	 UgszcjfA1IhDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64DE4CDB474
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169802389640.17598.9236454965667154630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d114ce34c14793294520905fcbffb4b5f1d68100a02c5f603a535cf669dd3eb9
Date: Mon, 23 Oct 2023 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698023896
