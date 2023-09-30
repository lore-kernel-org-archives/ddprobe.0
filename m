Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F03563A4
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 07:26:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8B54C433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 07:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696058768;
	bh=+zE5pj7CZO9K1lNl9Qbr36GljIIU8CjOML1ueI3YsYM=;
	h=To:Subject:From:Date:From;
	b=tHYp3MVU2AYbqwdiITK2FvM35uoELoOgOCSTGv+NSkYpvZTZ+g41a7R4UapMyv0Z2
	 FEVO3we3twvCTRZfcPEwkZq/GVcS58RBo5zJHL5y8TPwv2UBoDze4YZre3FqqMdx0a
	 G0NQ2N7cbv/XXDNx9VVCehGdkFr0ueMfadHmSoajNy0BOyo1EtgYcR+yCMfhpuNX0j
	 w8TIifUVMw1Dw3eeZqj5TkspXtA2yIVgbATQQ5jA/VfbNEsRW+brsZI5GyNZpgSD+G
	 0t8+9mKQ/GdOmMrFiebgbCRChIXm9rSKTRVaaQ86Tb51pnIdsVzqa/p5X/DR8zyJ0b
	 9/iNA309lww+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1977E7735E
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 07:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169605876874.19559.14736434699706332858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269a70eef0de9b37af126a8219dadef5eb19daf089f12a79b5686b391002b564
Date: Sat, 30 Sep 2023 07:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696058768
