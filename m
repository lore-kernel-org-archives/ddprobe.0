Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B74C6200DD
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAiw+A3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BBCFC433C9
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699556896;
	bh=bdN9beUrYSD6itR8ehBhnINRmlILNtgf62aI/fUq1nI=;
	h=To:Subject:From:Date:From;
	b=UAiw+A3xkdgE46DbcvexCBI93mL7wHLXQFyKima2c7PkvolNcG56SlnheendomcdL
	 7ZDXAcaHnoNHIONSPzD+DAnzqplixF9Ij2dle5yAClST7VIHBReKUcZJq4ok8hkh8G
	 gSWVQkKWXFDEEl9vK2BUDwv9Urkqpch41JqoFDFjHgRNHtiWGAqU+T0WugBCpwFXZC
	 cxF2HEm3qEq3ObjoZfAW5p0UN8pPAhem+xVubFACSWmvh92lhTGd95WLUo/jml+DvY
	 5+xfoESdq8udErM8fwuqqbZUwGap9yrB/HoDegphxUUPY8pRJRKmKv44ElQVC363n9
	 rQMbAymXpb3wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 710D2C4167B
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169955689645.2809.282946292723430132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e9fd5046af47dce926bbdee4f192d0f625f1550087285ad047854a52fd790a
Date: Thu, 09 Nov 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699556896
