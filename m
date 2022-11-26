Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB7D15A8
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 18:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70F07C433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 18:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669487454;
	bh=5wUFzRwwubN4Ps++tONqWDQD2Ig+qY70gexDRdGPE6I=;
	h=To:Subject:From:Date:From;
	b=TMBEFYO6YcJ0OD0Uv/GezpReTNZsk9r85NrmNj6nfeUwUMXR4aN736dPitFwsdNv2
	 24YkZ7o0xgbVQ+9k1dkFIqc/2iD6Tr3N8NgphBZtUKXHnj+eZSGixAXHM4wVNHNZDS
	 SMST9lBtK8VaMHsO1drLBSymZU7a0NpqComz1ajO7eUzdbnUsYJ7vg7SL/UCcROfDD
	 EcaMZSgfSQs3/8cUx3J9x9ZBdm9fHWUgKJMkwMbgT8ktRFWxIbMFdVAM999FIf7cnQ
	 XF4ZNW8gCAgSMIEYZ9iFPQg1Vj8a6inPXYwhdoSVcSvi7J4IgVR2vaSn5BkFnPqFVL
	 CmTlPNApp3/Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 534BCC4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 18:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166948745433.16991.13218905378234477668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4516a029533c5c112ccc88254da1cbcefa87a57761542412259875d3399d122c
Date: Sat, 26 Nov 2022 18:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669487454
