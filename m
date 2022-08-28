Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7175190
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD86C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661679052;
	bh=V9xOU5awqofOB+bVlnVWR00L1SkXyp5zzrjUSthhv0Q=;
	h=To:Subject:From:Date:From;
	b=r+1WHttc77K4NmB5jTXI68T8ZTUgX2Z8ppV17NYFf3OBrhdgCT5wznfjy7A4xPBKM
	 uIWV5Nqxli0PoDP4b8nzpILuT7RQ5TexZYafuMudsU8/IwCEmSqdyPYyC4IzVDmmQa
	 vOIDcHbjuPJisWgyD/Mvifzdq4nBwL796J0lbEXYJ6Db7l5BqJsw38ffYlFUql4xnz
	 QEJ94tfm3wXWvEWY5YHRBMd08LZszt3nyGI2DkmNtYDAWqx6rmOECdchcf7JRAkZhn
	 L8UTcLCzVvUjwIdjm8+VnoLc4A/yZvZnOj2yWoujhxQJQTw4ICzbbYQpvp37WfXVas
	 nvPZuXk1mpBPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EEC2ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 09:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167905231.3449.10323370705429609665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60d998f6895a1f4e3c554e6d7181bda504c7860b2f5801cd65037d6b4c73d14d
Date: Sun, 28 Aug 2022 09:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661679052
