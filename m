Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACF83D8C
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 13:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E8EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 13:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678801685;
	bh=+6BwC/RTFWOMKtyoMaS5R4l2XG9wq9CoxlB8dUiqi/s=;
	h=To:Subject:From:Date:From;
	b=BSDHpVqejQ1IR+outDrFsLSAUpIEPcfhYh3BZiWrVa4QN+iZsRvbtLjE0fcMSJktC
	 Vo98ML315UDtUWD20FIR9jkRNiuPGRylawcaTDLaKU2c7Oy/P6bs8oociOllHf8756
	 3R8y294+dBvBSEC0O3+zX0rofyce1qJ8xb+ltRr4Ab+GkOKotA23xdgWIaHeREjw4I
	 fUzFrWOfddOOI5K7BjggNdLvlSBKovQbfWbRRe7OYl3LZD6pngaWwtCyRlWT21xjUa
	 +2Y35poRyucLR3xmWi/MXC9G0ZAP/8vQR+5EimFX60KKLgEhQqTLNQBEw90AQNVz9o
	 DYIYr3UOWzlDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35C6C6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 13:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167880168572.28183.9369253385746558243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da4e3c279d999d7cad855f9babafb2a595906298341467e352e0f6e52223a70
Date: Tue, 14 Mar 2023 13:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678801685
