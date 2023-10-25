Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1185928680
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBESnovs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A7F2C433CA
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698264496;
	bh=bLznIVuGBX4VH1zY3j3HCyRPPgC7VM2Ju/L+XgnKWw0=;
	h=To:Subject:From:Date:From;
	b=oBESnovsBQa6v+I++UeAiMqKWwNQyb+fTSsYz4gmxNaDkj/GNn566nJoerc/LNytK
	 3zSrsFKh3BXakk7ebxIc0IV1ehEl0MpF44rBOAQoZaWWgHSh+gotRe9DoLuwYLSV36
	 JyCnpNEyBZ2eT70NLm2qYMZVKpjxht1lWQSBsuaOnOc8Spy2Xfds9hUjnoSfzVfXFt
	 DJmeuHo4Cd9apI7rhXNwFDwr6+3u/vJo6pAGZGYWBDhaIjhHp4yqQFAE61S8TxJm0a
	 NOK+/ddle7xT7VUMcm1FRgVm5WJFWRXAw0dWt8WnbL0diIs6n09OuNfyDV4MzP7ONX
	 jCiEuJIsusn+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C50CC0032E
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169826449643.28983.5960461098057898345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b79d6c682593d22ba6c141099d7705f329e4724f112428931c645b18773642ea
Date: Wed, 25 Oct 2023 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698264496
