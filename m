Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7E41306E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 19:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6502C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 19:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687892588;
	bh=SWXkVDzpJ2gBdoZfKWwLIXxUnkvrpE5hTzldkaNNDys=;
	h=To:Subject:From:Date:From;
	b=Gy2/mwiuxQrXwa5hN1hgZosm2EMjynXIkfw07KQQEWa8vsfD2yKa09w0ceNy6hTco
	 6dTkhgZN/omOZWTaFZU/tF8Rdg8sdtbT10fl+7T/0B5PEQSwi7XXCEFhSmtL6c0iX7
	 TKb50ZN0oXuWTxmt6kbbqvF8ZgC/d4ewVOywMIloeiQ/D3nCXD7tai36bw1jN8qihS
	 u8OUoSd0C+EoWZlNLcPvR+5o+4dxOtx4QqAruncfjfhZaCzvhmGpyu2VR3RZ5vcR1W
	 YZ7a06BjTB/6X1pHglKWjgU77Ll2sT3lcrPBIYERuOgnRcFoJ/UCqbJpCg+4kdCCG1
	 pBzoszkF2nF6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1196EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 19:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168789258878.19343.17600067722713836350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f97f555202291aa8206f7ab09e5eb62e5f0098e21af3103c1ec6409472bfa3
Date: Tue, 27 Jun 2023 19:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687892588
