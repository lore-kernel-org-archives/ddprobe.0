Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E096AB3
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 13:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B556C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 13:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670332854;
	bh=zLqV1DpnlSQF1RTs5L8SUVEdTT1b0igZ/Z+rvyw0/GQ=;
	h=To:Subject:From:Date:From;
	b=Qzj+b0FFuEulGHjwSsvydsf3rMmU4VQLwkx+pUw//82kSzFvPMbv3M2u0jLCh2DTy
	 Hk2L7rVKHdxZdBv4JIVkQtHFbFkN/w/MDj/A75nE1ArU6Kkl3wx0NDp0xzeK0P18pH
	 JbKlQkkr3htqQbwTz7LnQakuwhOfFpfoFy36l0rpXvJFDA+8NbH3FSjKQASRGhtx83
	 kuqVK/dm7oXp6ZLvVZHwGCv/HAR0gv7XvukWGGtwVme6t6M02IXD3MqSnUoQaFJ+3a
	 qxdVLaOrOsTnODM3Fj+5KuoSxMBxfejqJ73NhHbSmtagFc/MOMIQomsV6WIYGcv7RN
	 JDTvlFAzGvaFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 576A2C352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 13:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167033285433.6975.11748466240945467033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b6284bb1cac7216f6f5cfd524632b909f9906a88af84c05382a660a43b02dc2
Date: Tue, 06 Dec 2022 13:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670332854
