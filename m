Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4F15D532
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ED64C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672935087;
	bh=Rw6v0DGdrSnzLoUl9fMsTzV7UEVpO6r+oShyTezcu1k=;
	h=To:Subject:From:Date:From;
	b=uVmGPAuUVL4ovdrg23MdCkTtAAner2As+6E05Pecs4HOM9pdOHNLMzbpjZvi/xmkk
	 XKBjOyG/fzA5RRD4NRlHPzcwI6HkR9Tx3IUD1YucMBNb5kQlWTU19AVdJy1U04dN0c
	 LrZpcMv3Yu1o9/54sPum29EHwYmESh7uVIfmPwpqyDnavBP+FDpVeg4o80MMPekpho
	 pDWDQkacYgc7piQ+mnfXSitOHANBLW+G8Dg5hAwtWgasZHR86stgZVqmnbwAFF1j2c
	 wpIIUbjdYXjcysL2uDMNrl5CbdcqG8I26C3E5PMS7fQEqw657gTaqQ7IBV8UYRfpo4
	 m2+11EvsFBSvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F43C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167293508739.6099.9728187060347945956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c3b7e13065c1b397b935d1b95a5ecbac8bb177751db3698b70d7d1af0ad5f6
Date: Thu, 05 Jan 2023 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672935087
