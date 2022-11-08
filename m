Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D282101
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 773A9C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667926854;
	bh=q4+thJGeI6bawsNFqfiwxYa59VeQa7Ci8pHqZ5XgaDM=;
	h=To:Subject:From:Date:From;
	b=fdy1kpj8k/1eORQRPitAuDFoJg5Qi2W9S/RHQY0Xpga6ZOF7RNfTL9vunFQoIOGzY
	 Ll/ObrYaFWAOxZIdwpgmKgS4yPgwLUSOij4qCjRLt+Ym51dNKrYlKXY78J0V4DZyJf
	 HUHq7W2mwUeQeQYa1/OQQwq1kfD89k8fVBUzDa6CQcds/uGsfbSb59oqxciKGzLbF3
	 ZZZnOtnVR4FMdTh5NzNq2nhKA04nKjubJNHwkPO2rDmQdL8+HCDuH2qXtmb38iJfXR
	 MfiIZaFISXHYDxc35Er1m80gXxvxjH/UvL/n01AJ/mcuNRawcR1Cup6STDyfsDHiwz
	 E83UAUCuCgFkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58BEDC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166792685435.30154.4431603811519091906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af67e9bce891b2302ce24adc29aa1c9be1cda6962d4d74d3c1124a2f45c3dbd0
Date: Tue, 08 Nov 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667926854
