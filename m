Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FECAA950
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 17:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA77C433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 17:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679591345;
	bh=BsSvfxNrqsxVYQFheIslKQcVHTI9hVYVQl3NN8qRKgg=;
	h=To:Subject:From:Date:From;
	b=NC0Vsw1Y8Jci0wqGGNsqvry8IauoBQRSzrlEllF59YJ+Z5CkCJ5WvF6VJXdw7TMUT
	 t5l7Nlx3c1DhoEp4sQAMHD61HRJPPA4IhwfhUpfFXuf7NzNBuiCYkvgkkjf/+O8jui
	 lsjinV0nJrIe0suvLLcJ586i9z7TyX19z6z6Q0+8Y76ZOz0z7EPBa2vvC9WBON650y
	 HgebT7Qq4bIL1MMkBQ6pO5hTuwgggCKHBPWxdAgnqh0rq+6iQbCrB3YmweilBEudHh
	 XiYMuIzTJUlpQHfGY2tTsqoDQxqP0UnuRSkKzh9WQBpm4Yfa1/UYCLUl3dv0pXq8zi
	 P6ni1tNbCgn0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFCDC74A5B
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 17:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167959134576.13840.12815531284103296359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d862cb69952132beeb84f592cce0327fc2c1455e07a5a5ba3cc888d75100a8
Date: Thu, 23 Mar 2023 17:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679591345
