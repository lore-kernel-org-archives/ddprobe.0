Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25C8A480
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72995C433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667943054;
	bh=pOfJtUX2YtYXnfsidt1FGXy9zOLw+R9FMLA3cHD380g=;
	h=To:Subject:From:Date:From;
	b=PhLnqpzBCKNpeu1pKXim/LZTj49ccncAzk9IYBS5pDhTCKRXmCd99rcYvD0TM7YjZ
	 ws5Kl5TI9EwgYMy7A3904YH4ygnnv/QXA4TdgKHd/BSRooPEL27clAvrd8ExT1kwF1
	 vviFJfdA/YwaF75QiXK38mdRtu8+BRuP9eqgcvIkmqRgIMa/aYsfIUKmYYIYEQ3ZRW
	 SD30IJQY5SzxvIZvhke+kC2HdlKMZf9WSNQTR9v+jgT8gnlTNx2hiUBa++K25H7Dlz
	 Wn2IlVbmYhhRBBRfKqW8HIb4IR2lx85fEJrFBzVw0Ou5FJ0aR+On0JNa8JrBOKmIj0
	 vF1ol+xRV0h+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 581CDC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166794305434.32320.8597816614359878783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb6f5f29bd030adf1c8f66f40e78d2c6c8406c2fa0306ae8498d02aceeb116a
Date: Tue, 08 Nov 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667943054
