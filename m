Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0486E210B
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiCARlZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A5E2C433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703219296;
	bh=OjflnCrDs4J7fc2s/JZfZOfkiQ7JTa/9ZseS3eBB1Ro=;
	h=To:Subject:From:Date:From;
	b=YiCARlZyATKJKipZt7IndKuO+GR196OVnG9Yjekm5gWIxJ+9mN9ZhA34MMaR1OQhs
	 Gsy6k+1U2SGejTiQZ7Tdtu6L3Fl1eVYFs8zMgM7VxXD2Xvb5M1THwnbX2zSDieUr67
	 kMFC85D2tRDKyJ7NVOcVi/0LufyYP6WVghCgud4TPCN/hZhrdxWtm7I+lAAZaDaEK0
	 hijNRS3qS9gxfgpw2nToiL3ohWs+zxVa8f58zBP+hyQLtLyYEtH5ExAntXeVjmLh33
	 mn2oaAgY7FYUTLWSNFwNqj9Tj7KdEGi09iH/sZn9WNjclDptjeK06eXi99T1gIBHlq
	 kEmaQHlbwe8yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF15C41535
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170321929637.22779.15973337920746826218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e33f3a26af042e28c365ab81892d19f01cb41b6dc02adf93c26690493af03b5
Date: Fri, 22 Dec 2023 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703219296
