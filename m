Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C86B33C0
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 15:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2352C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 15:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679929385;
	bh=VUzG85r6D3Nj/xJq50Km5qgN2rOqdaAD018ygiqFc2U=;
	h=To:Subject:From:Date:From;
	b=uXMd88wTAMAnxpfkuowoMYT5MS+xwlOa0T8feLW6MOaPe/cdHSDX0DrSTRclmJw88
	 JH7FLQPqiQecL+01UumSiNAF5qPDRRlWIIFJDJ6B+rJ2JKH9PWLdoPfnps1tOY+vEc
	 79GVboKMzVchz89qMtv+kABGyq5qLgjSb1Zfyc+3QNFu+cyEPWs2ki4xPlZmUyBvRD
	 ZwNF33cC5s4xHW0qlQFXW+nEvY395YdMiuXBVT7hFjgGtG1joXn/FcMrB974J3nUWi
	 gA9p5oX2gfZYIiOXUrgO6EV/ceXrkaqvEd+rN+J8zoqwBhubQwqQqGAkmioQvJSFW/
	 Ej4j8pr2HRWdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF96C761A6
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 15:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167992938576.18737.14082206129820754293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771bf6f33d1b3f0f9c587fdcc98d36030ae9cfb03b7a260e5bbb04c3d4c2002e
Date: Mon, 27 Mar 2023 15:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679929385
