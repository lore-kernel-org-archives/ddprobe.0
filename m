Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5378B8F5B
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 23:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0BBDC433EF
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 23:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684625346;
	bh=npmPnCsGzPOBS5t//hLsbsE+1QdhlNyF1/a0lMj2DrY=;
	h=To:Subject:From:Date:From;
	b=fdr/6bxtVxnLhTSNDyIWOLE752vgU1CPamFqsCeaVfgj1jCzjinxc92keeVDc/J6l
	 LLsov1B7gIiRtn8oQRASbv0oGOMzZ8cBxGfQqZS8xT/qH3TYDuPuUNClIdEAwajeeF
	 B/p/DLUqFkcTumpv+/4p4Q65MVXew/MGUcjzlK9T7/v3+DH9quFLqnTIH/EtSyIqEE
	 fM8+DMbQxq2rBbAJ/7N0ANy/G1cXv7yrclfUciHI2brxI2F3jnnH/ZQD3fabME4mqb
	 Q8jdYMhDZg9/nbs9BEG8Ha085oRILSyd+WeiF1t3qOAo4JePfTdco8vDtEyBs0dXq+
	 +aMcC+gz3FndA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF4CCC77B7C
	for <ddprobe@lists.linux.dev>; Sat, 20 May 2023 23:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168462534580.20541.11708654992239637044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a312233502f60fdd27839fc7c6ec720f49247c31760d616fe4fa26212979598
Date: Sat, 20 May 2023 23:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684625345
