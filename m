Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEEF27F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C8C8C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666005653;
	bh=ZvoRCbY45kn53w0EnLWvPCdH+BbM6DWd/0lDqO4C0To=;
	h=To:Subject:From:Date:From;
	b=SSs0K8kfy/l0jRJa59pnXYiN0iESKBvyTKV+lwVau5jXonT3Gs1EM4EZWoSa4g8zC
	 MC3+1E0SMuWoqJqBvHJFqHcsaD403SKeNtgYrw0Br2oIEc2aMtTw8P97ZoXcMkwpHR
	 TRXqCxY/+gesslYpxrKR0lvUN2kuD6/W7FCBYE5DMGkT6yhVqvJrWYsWaeQqghZj13
	 Z3V3t/wtutcBMJQ4BgkcHq/eQ0FNPHzkaf8qNElhnyjUM9TOWv7rOtDgRIImXv5dwP
	 4pN9ZclR+sxMeae1zlY1BVEXT9gLSxNlXyprmDHI9fhNMUM+y+JlRiRD+IEMyXRMW+
	 N+/yNQZTT5fvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EEBCC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166600565337.12368.6848083601118820499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4c2dbbbd23973c4d3c42b9ef5cbf96ec89d703c13f2fdcf4e889efbbdb5c399
Date: Mon, 17 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666005653
