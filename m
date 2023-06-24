Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD7F79E4
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D596FC433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687636388;
	bh=9KX0qyIy8OfmHKIrOzD1uKRm3ZeHYF7VpbmNsUjcwaI=;
	h=To:Subject:From:Date:From;
	b=jXhS70Hs9HVeeIaK/yikwXhYaD1wA5t9HC5sdEE6YQgJYZzVO4Elx5TutrHixM8U7
	 9wTjPSE7Dk8zbJY1ZA24u6jjKAigWjSTLFS/MXMfrufDm/36hvLYTIuFDB3OqYpmav
	 sG8OKr04MLQFmU8FvSFVvxPyFfLz2ZwItH1KDBH9RKs9nPfVXWv9eLTMFSLbiwgtjO
	 obg4Hi9KSzMVWbBzkX6vqk5lOICBIZkfBCGNh6Q7ttYFgyP2uhRTWr/MaRHJBXsKAs
	 ZLd579Vhhc3QKtBHzg285Aklbloi2puwOwFGfPhiaTkFwtVfS6E+aG3G6FdS/qRpLN
	 lX9PTlqDf0cMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E4AEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 19:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168763638870.16174.108169688363565274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cbe32859912313df29eeebe21d4e5000d74a9cbf87f7b156ad9742bb72d9b24
Date: Sat, 24 Jun 2023 19:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687636388
