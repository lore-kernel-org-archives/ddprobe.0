Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D73376
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 05:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6DB4C433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 05:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678945205;
	bh=Jqj5ZPHZ5MQWCjrrUMOsi3epVNlW8k4ENFIEUORSnEs=;
	h=To:Subject:From:Date:From;
	b=pyohzxcM/gJv/X7ZbZ9z1j2kwMIVeIuSSbXkGIx+lsibAVC6v/yIEhtR4HLWrgYJE
	 uuXhVBjWFTNBk763W6/AwxGjsSgXu5KWSuy3vb/ip14FhDytfavanAU6h9WHP3hqbi
	 dTYOJ9WIMlzfLVngWICxlAvFvKlP0ua+Eroo+zzEg5UnBu9FR+Om5mrl5nsjPQanJh
	 Mp34hLOoBLXn/oiZL6zml5YCgirErFMJU95yDFX/ydy2KeDwqOP/sNU9gFvQqP3yRE
	 k3yodSK/8xtixkk7DUqq07LzPpRs7amt98F+rna4eHAm5xXr3GQGGGUMwD34nSDeKy
	 CBuW7D9eW0bAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C714CC6FD19
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 05:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167894520580.29950.18197911994349454982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1222a897469805181bd9f1f4a52f2cc69af347bad217b695074a468d115ab30
Date: Thu, 16 Mar 2023 05:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678945205
