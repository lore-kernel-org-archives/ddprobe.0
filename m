Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCDC9A29
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75048C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669794654;
	bh=A0sdBkWumlo+zvJnu51cptUleU2Lv5j5gni2M2/z6To=;
	h=To:Subject:From:Date:From;
	b=WbNiYa3Fep8QmPDrd0kYqkrl1xqG6OP+eBAIS0RnBhn1VeYihcfa+TbGBmB1w3TyG
	 1b3HopENwu/nNQ5SaVzLtWgt0lZ+B/s1Uas6sdXHqEyHtxz48SvCDc1rp3yWKY/zx1
	 FO1L0M3Re6GBK8JyTQS0AhlBR+hVwvc2XFLBgAq+IJjOpue15FysubZhvG/uZ34MNY
	 q8IdSNwmyET34S3o0PLvD88dVATjaKaDRTejHKRCxcDdCg7Dri4tLUBuQBv5JmhsY8
	 NnCG+GNgJsSe4r2MgHOQdLKvZsmBzZal8+cjBmsHSQKnaZTzusUHNLkdELkbXIwotV
	 t8td5OdY595CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52030C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166979465432.25940.16335878596679983041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798e825eb104d2901b6bd2fd1658a8e904a14e32b6d1bb7a01c9102900a19d06
Date: Wed, 30 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669794654
