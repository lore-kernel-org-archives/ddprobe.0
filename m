Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F32A42930
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 21:38:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9LfV1wN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3F0DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 21:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697665093;
	bh=GPYoMJltltFm04UQpB5NdDIZafcoDkMt2ihAQfTJhPg=;
	h=To:Subject:From:Date:From;
	b=A9LfV1wNkKt2vIntQwIHruNYhnOQrrMDnebx2SjvJSiNQG3H89RmO89Rxt8QU0QL2
	 Uxh29QznkBHApLbYT/rsNHW4Rx3/mtHlrwEuZYVbXcHnorQKdJaQOvxefAZKX24Jgy
	 SoGPhIfF7FXjCQ/tQ5ZI3yC+Vrg2X40PLqAH2B4INiOjU3JeJ3ytwBET/IuAHDoIG6
	 PrRzBNh/iLRxKtLYKg7n0b1ZWQEIfm/Ykdp66Xt3F7NHBXuubC0qR2Tn1E+PNLIMUZ
	 Oijysx1nFqS11qZ9rluU484sm+tw3r64gEXMwOKr/3LZ+ZK4fTRBu+D1qePwQ1QYd5
	 NIDdhToAvUcBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8A73CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 21:38:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169766509287.12780.5758373912627401255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 447fa3ccf135a4a8e194899f38e25c8889e44fe7ba525af6b15e687db67d55b5
Date: Wed, 18 Oct 2023 21:38:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697665092
