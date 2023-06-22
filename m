Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6C93AA87
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 22:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F5CC433C8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 22:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687473188;
	bh=9WKmQ/gFUlpk/Qflg0OJRLVX1WHYOlyz5JPw3U90TyQ=;
	h=To:Subject:From:Date:From;
	b=S0HeIcNhkbVLzMKm8ePof0SjuePWJSaDKD09EyXHTTrJNbDBnsxzS5wwNUKP/AgoS
	 eVj0ZWL/AoMzhhkqZqahT0IYXLB2FybMZowH/idqiqurROrH4vUbWzzwPAPiWPiRvR
	 gN+PwdV7YYIH2lrB4XW9/va4v0Qy/S30SNR8S+0Y5nDHhX02J62SLeLLyS6JZNc36l
	 J7Beelt28mpqdHEkz+epDDr6Y7VjPSdfYSayejXzYuYiE0oriDIkyqneP93amGay7S
	 9eB+D7GuGpM0g5CFL+U8ynTIhFc8kfYcpLHODU/MiaY2b0DA2DDxG+zzVMT01rahzP
	 kz5s2ftIgym7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B166FEB64DC
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 22:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168747318871.31831.4268588730771853983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3f1703b4dc042120b0cfbfb5fb1112e2ce6ffb7ea485014c7dcdc613e4e126
Date: Thu, 22 Jun 2023 22:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687473188
