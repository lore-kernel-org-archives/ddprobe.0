Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D64D1382
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51CEC433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668853254;
	bh=VpNyvfFxzJ96PMU6S8I+ROBDRqyQRShYl3osvze/1PE=;
	h=To:Subject:From:Date:From;
	b=mhgV/itOf/fOzB+g/TdQSyEwD/ccFFC5SxsMRl9TYOBPNH6dXhWlI1d0VtzR99sBJ
	 AiohodSk2qsYcD7QdIAyJxznBdUdY5rYKF4UAyTODAivqRqn/d3zzlMf+1ygkjRAg4
	 HMJRjOBuhgu1qUtTHj7VnEMqr+/aVHtvlMoLj+jkN1TaAOEyKZJJ2NaoWdFMirGbQz
	 wCbDpIGCAGLE2ccNcur8k/6cgNsneiVNT39BiJCfkiQe1N6Yj2Rzloq5ZmCa2X7vCc
	 GjTTdtPNGTcLzClkx4ym7RwhmmhKiTdusIVd4Kr6cTv46iqjlf+r2AlF/oUTKyA8gg
	 YR+fOnuLS3maQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75739C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166885325446.3506.5751794169682758439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b906517840fd1ad84f219a6cae6e40236bf46cbeb2a7024e05eb1213de8437
Date: Sat, 19 Nov 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668853254
