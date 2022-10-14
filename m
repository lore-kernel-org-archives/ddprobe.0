Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9719811
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8E5C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665750653;
	bh=4N1c8RBTX2fmSYCGXtVMUQrkyyg1ajh2irZsIuIm/V8=;
	h=To:Subject:From:Date:From;
	b=FTCY5Ap7wJPLgZWXKmN6/970Hh+j8dq73M9eYiBrBwLchLs2NoNz+Igwp553dojTZ
	 v5h4ZTZiEYQeVdCtZ+GlrHLqfSV0gqm+BmiVUfULsXoB4my0X9jQliOFojgsxW1VEH
	 TFMWqt8pLVvZwzMbqxmKrcJDjqCcTiyeW9PfuJw3V5ijAZBHTN1PsTA/d+ZUbigfXx
	 5LA2t7WhavjbcZ014fs75GeDthkkw8sVi6Zc0Z0wiy342zDd3ZUANbcU1gLL+PFw2B
	 acc37Ym0EadPJ55hzMnGQgcL+s9V0yDDxWp6ugtG/PV+9pDFXUfgIZx3xXXvOW7l3q
	 f0ip4L4o3LI0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BCA1C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166575065334.5754.9330360188239803855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06939b2d9a3e20bbe3968e8657a6a36ead4c6d895b96c891f2a9055cfa62b971
Date: Fri, 14 Oct 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665750653
