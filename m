Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D1181A
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB1FDC433C8
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692937448;
	bh=Ye7csSncMv+ZF5tMG/oFJHeRAUXaKqniF89cPA+CErk=;
	h=To:Subject:From:Date:From;
	b=OdBdlfNRAdUZgD6uv+4fdJqczMnzCIOjWdvM/4h/EppGunr02vgRQCSXSzs4O860t
	 b/vUv2Yp+jfWvGT1XGWrSNSJIG1RxEmQj/lK6dQV2SqEsKYx5n97tltWxsLTxDP9BT
	 leS0t8M/r7JOKSsj7s7bsDgJmy4Coch+oHjI4snEmg94ZuKh3Mm7c8nn6huUeRhG8+
	 MwGtRd6p6FcC54mI4yQJso3nDXlrDUrmGD+j1/J7BIa1JcmxsQPGn6MsVxM+qSSvT4
	 y08yGQLNPMl5CEJRI+Oa5TQkG9+VC6ZVrhhuHuv19Ka8vzUCPm+prrLhJ6NwPCxvDj
	 L2w13yoKNBvWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4E6C71133
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 04:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169293744873.21026.3536839335252889474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3486a8da674a05795f57882c9e1ee067d9fa3f5a7dc44fcd3c4649e2a4c969
Date: Fri, 25 Aug 2023 04:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692937448
