Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598E2211A
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 07:19:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EB5C433C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 07:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689232748;
	bh=+nDa6Yym3JiDy+tQiI0hDrNnmYT3mkRStSNWivKKCY8=;
	h=To:Subject:From:Date:From;
	b=UsqvSFr/UwDQ5kqRKr2P4uoLhT0GSJ3NXlW4iBavgdN5piRoJF7KQHlxepN0r4AfE
	 NoXzNh8TJLKtg97ctvpKkiJyljmJUtzy3YlKni1sb1J2yucw7ML+ndWjC22lL1XonV
	 BkXsrM5L8STcFHtbiVYg58Sf0+EfTz0AS0rMfZ9Ow+cBuiQaCn37Z0aEthElI+TYfU
	 9nlsGFWNqKFsYTdmVryTnGDVmD2RG0fdfoOfeZSB41CgCldOGGRgkkHSTgLovkKiqy
	 iNPCFLqbNhELhu5yAkSsWQ5FUDxuuVGji9y1r2pgLJbSuwcKVgpFqvlqXcomz3N4Bq
	 j0X9IDgUDfd5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6812C001B0
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 07:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168923274867.19330.8224640203384779562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc64d9e24f6790e843cfcd6a4cb8ead2a7a0439db8c80d9b51fb987f5b01845
Date: Thu, 13 Jul 2023 07:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689232748
