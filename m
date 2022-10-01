Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8A128E2
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 764AEC433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664637053;
	bh=Ae3yxXTbB61h2s3L5jkgkEDdfgl8Mqqg7TeoI6xN28s=;
	h=To:Subject:From:Date:From;
	b=QaJENfQV8/Jz5oQkg0yvlbVltbOR7nzhsRYyO7PbrLWcZW6ZILH7tO3ARqKM6pyDB
	 ZmDhY9wv13/RdYKn5GxT76Rm+I1v3MjZffvgjzfbAS1+PcV9qLSr3PEkYyJjow5y/C
	 CREFWSZmwdRoCR1Sq/2qG5EPUT/hk/r0ZXXdZfdw71ptUpLSwA0aInYFyB+jo7Hnot
	 3OowyOmVsF6h7ZQ/ZJ1scVDFXDDHfBTSRYspJniH1eqil59HtAzjXQGDHQJO1VPj59
	 quznAYgkTNsRIQBheTseJnStGSzc1itTb7mJLOEqDMeirpNsxabc/Ykz1J+EFwCDq3
	 g7lCIi8JalDNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57817C433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166463705332.3980.12923549820879251513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf87d74927c6443374ab0b6b31e4cc3b612fb8d91e50048780a098f548cfb8a0
Date: Sat, 01 Oct 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664637053
