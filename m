Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B807415C2
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D510C433C1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666284053;
	bh=popZL+GpUVGSaObt1XP2NnpRnj3LM3XKwkNerW718Oo=;
	h=To:Subject:From:Date:From;
	b=FIa4AnuCLbwFPc8IeUGaCxbWyE6IM40bqcceZwc6IhMBz+fghXtl3b2ekaPxMJA6m
	 5TPlWNJaeWwKHkjbTjV/dtC7+uCTKb6iAFHi9c2+j6K0LFZyfybaNL1++vBfSSXE35
	 cy9ou5mvUcWj+aGAyKB53vZdo8W+pcoTjiEykV4FN1IxeVc6sSfqx7Z8bbQk7xBZ4R
	 QRuJCeuAdzWmcfFjWlYew5vm1XMgddqygc4qm+827/5PWuzEINsZO5YgfzgNjON3HB
	 9FthxfP03bExbS3Gx+Pq6lw76c040k+c+oaUdOmvYRGj/mNrCy8Kpd/lVh3mOekit/
	 Lq6AxAdlE86uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 537F2C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166628405333.29672.7627015513817318924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 980d6d5109e728b88c40b11a4cd2b61a49e6294870b277ce132921b80e6e3711
Date: Thu, 20 Oct 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666284053
