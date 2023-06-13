Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E1923DB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7617C433F0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686673628;
	bh=PDX3+ELKaEPugXM7rl8kUS78U0tRUOV1VDafgby89ac=;
	h=To:Subject:From:Date:From;
	b=CuanfQwrPd3MTmyRycWXbrht6/o26asi5Hl7+nC6gJBYf2Ay5tzJ71n8sKGQYROhb
	 SNAjm+qciGaqXKAOfkiKk/7LMnzEpRccc//PUO2/7fSNm1TXZeVR1Yw06deybdGmLs
	 g2C5jt/Gjf74MSTNEf3LGExFaLjdT9aD+CPluOLegMgmfYhVGX+0WM/vg8/sX6rG5X
	 PNAGBS1wll1UnPUlFN3HFs0TeI2vS1sf5gBh4JZSdf2qEsZwnQK5S8rHMubVvY2sdt
	 iUzqbdsDsmRNBf8mmWXT0wysOCj3H9eP7v+1O4vzMSoqQ5KPqEQy+apJhFXBSZam05
	 vyry55mY4tS5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE4DEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 16:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168667362869.7811.12472544408775248183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bda6bc4eb162f37836e0c644781a163df7354fc8d5e2f46e8c575daa501745
Date: Tue, 13 Jun 2023 16:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686673628
