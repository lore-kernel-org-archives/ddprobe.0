Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F7DC46B6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 19:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3E8C433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 19:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687806788;
	bh=CDPORKmJrOn6uGTrmEN4nzxrhFMA50MDCjvjahSvPUE=;
	h=To:Subject:From:Date:From;
	b=MAsChHdDxOc7OL3Azp9Xdp0DHsutYyOBKbrF3CzfIgpZ66vIfOx8eLQpY1nijpzDs
	 M7tUCO5lrH9QplU1cgTH+fKw7Ih+h+UWFhYA6Vqt4xwPgynZW2cWC/OAwqbVebakGd
	 kfH7Yj0e886kiZ+nEfb3I+PUAE/Zq5fkpf/So3Xm/8bLCGLEN/zoGXxmenHtN8l5+5
	 gxf37BKQTtMr3k4w2/0BivSx6s/K0Rs7skNsUd4HGX/wi0uJdfkwgzuZddbHRn7E6+
	 tw18Eb+W2n+46bWBjNBgNSTpJsOUl41uXoIAq8qdXDOW0LSohVlhrTys8i8FCDfzTR
	 GSxmf3F7FiNEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD62AEB64D9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 19:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168780678870.11104.16707450059439489900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e8cd21d994552054c780fcc4ce9608e87a11f5fdf4d9dcb38adf3d11106c08
Date: Mon, 26 Jun 2023 19:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687806788
