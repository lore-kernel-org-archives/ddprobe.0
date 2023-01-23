Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B963A21
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 08:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD67CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 08:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674462125;
	bh=iDkxXCU3PvV1Ijrl9bTV23VPaXIcWfoHRsXsy9cJVcQ=;
	h=To:Subject:From:Date:From;
	b=NTw/XfiNajxf74I3tPEjnuURaX6aXEd9/0jRXz601hA1E5gK650ad2wE1FPzyxCdo
	 pTpFQ2W5uy4akFQmLzz0J/3+Vb9oNsP20bSOi1DvRkdtwJIU+mTiC7AflW/pvUcOhf
	 fGwqVN88DWOJPJ7CpUs2YMAezpYgGHTNyx5Dnk1bjGncEQFTp+ZRIXCo/s6+nKt2+g
	 Ir5p5Tv3CxmnpHEEU8UCxi9BVF5Uk0LeAYpkbAIAJOkji49PjRkM6rTeGUHoVJw0IK
	 MO2UGMv+N72HTeNIVrbv0WpkwxJ5X0pBtiv6Ytws3/+fgxT0/9I7fUT9MJlbe0/Gws
	 +sOnXJZ6fipLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A50C05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 08:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167446212580.6360.16794472931185652565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693ed31c46bbb16b741862f69d05b1040d7dba4b45e0b773dc27954ab43c1c62
Date: Mon, 23 Jan 2023 08:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674462125
