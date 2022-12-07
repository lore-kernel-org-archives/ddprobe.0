Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9272102
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 14:40:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E1FEC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 14:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670424055;
	bh=JVNJ5mIeerU1lHGHnggCXO5x3o5P9RyV5BPgaLc0+54=;
	h=To:Subject:From:Date:From;
	b=nVUFxQCfpTk5+ADgVGXHPMQ54v9JAH/6xTwfMuhZjTdr6TBUufPf/qVTp+kasjpGH
	 U224LY1vPdOCjEDmtaJdM0ZlvX4/C2RYmjaf6KMKU9DNuul30MlhLcsicQASla4JW7
	 ph0Q0Ao31gul3wpxUcozDDgS4b5n5PADVCg/NQjahWtR8qnWG9L6yQ2CyEByQyJCyf
	 Acxn7GhcjZd5anHWmDD6Uc8ePzaqFCcVBM9lwEmjk0czXOfoZBVWPEdHpyhp2EYSrc
	 nBO34Rt1J10k0f0AqrAaxl+rxoI3ZUNEoSkYjXNps7lyhAGtD3dg5A5F/IZZ6y0NHd
	 WZppYNF00SGWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 559ABC4708E
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 14:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167042405433.5539.16132444285235866426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95edda741fb2b07d8ad3a097d002294b95f8438a8618e9b7f334546b12df1cf
Date: Wed, 07 Dec 2022 14:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670424054
