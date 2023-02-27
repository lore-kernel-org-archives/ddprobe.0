Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C23640
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 05:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5303C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 05:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677475565;
	bh=M9Pkg+5ZTZAHmY3p8DN+CaiQ5U1Fo/WUrepwotOJHpk=;
	h=To:Subject:From:Date:From;
	b=mzVypSrAmBZ9P/iy5iEoJ/qkHe1RQGw2bkNwT04+p2AztfRM65LvfyMKhpgDAKWzf
	 xTJELX3sNHdhKITl0aaV73Ud9w0GQCtxythrBofDHebVqef7xEaU4cwPMxTeic4nTe
	 SqDkjsnflUnjheXuVnplKC6aK0Bhhzf6B60aUpH00rGaFF//GjI0Np8a0FKVzhdTbM
	 VvBDlWumgoHV/u9EnR4fZMEhFfsC4DowQ4BF/yuz3Sjs7iErs/JOcpQ484cvg7Cf6A
	 ShfrG8RN6fF4Fv/QgJqLAMBK+jnYu+zAV0KE8LvRgbxfNwiwU+ul+h5Ao6u04q8rSj
	 Wu5A3G1a8vwdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16B9C64ED6
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 05:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167747556578.23044.16684734561981853011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9e8b090fd4a0fb8bd6737118e762703dd87d5e9edd312d0936ddc72466f17f
Date: Mon, 27 Feb 2023 05:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677475565
