Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0CC81A
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 02:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3249C433C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 02:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692151388;
	bh=FB9nuKjilZFoEhSPAEzaPMzuqSofpO9rPGTr/BCgN0s=;
	h=To:Subject:From:Date:From;
	b=U4J1UZXipYmgfKV3XApr5eACIHSB89hCkb+U8bXpMYCjHbm0yV5f0hc2peDn5m7qJ
	 R4DbkH627yNsta5CIKkw1b7E3Wm2KeEbqWk+G1Uo6QvWbiJ1Wofne80d4veH/I8jyb
	 s5SW51IgbRAUOusPZShwfal0y7n+Gw2lB6rVsiumsY1RK9MLHlZGi0ghnx6hLdDVgE
	 CzJjR38M/aeLvDOZiqTHSPM9lxtjHFEpHM1u1t76zAtTQ2JoBuv+FPwZZpGWX87gKV
	 gHW2NjtJikiqNVoIEZ/+ZTWoeUOe5n1grOPame4S5JbwF6cdB7LJJ/UxgLvRHmA1HJ
	 MtrbS4Erzt7xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86AAC0015E
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 02:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169215138868.14176.465048180859936371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee46fd69c3fe82992062d0122686551b8e48e949b10e14c9b3675df136729dd
Date: Wed, 16 Aug 2023 02:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692151388
