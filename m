Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC71A10F7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 09:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71097C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665999053;
	bh=taEIIvlOfUg3YeMAMi7qbMXH8wImazCla1GT5F04UTs=;
	h=To:Subject:From:Date:From;
	b=PYRIAI8ccCZ9KI1Z+x9tB+bqzX785QfegogUlxcj3GoqhDrSlKrRbkCxH1k6ib+g8
	 D1Ot6NA2GU8qKXBwowZ2T2gp+yJ4VJejFiPjNrEZiEutfK5kiGO7QgQkzgXs3sl2eK
	 lKUGesTCF3/EKtnAK0jRvhVbkk7E5fxtfeXTL7GinVat49zv2/We7ku6izYLNiaTM1
	 uOkS9rnO1nDvuO22nX7SIaA95a/MTxwdpLtpnWCzge9lNeuhI62mkdzvAzYcTY4C2V
	 uoQRFB+qJMbV7j9h1eHQVE7vq7Gvjx8pyd6qp87uXp5I12kBWxe77JTeQ01uhDCLgv
	 Gr+M1JbxYi12A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55ADCC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 09:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166599905334.25652.17334856261785893639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d81aed8c8290aa2426a5e8b3a214fd57faff7d43aaab16c59e58fe436d3e09b
Date: Mon, 17 Oct 2022 09:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665999053
