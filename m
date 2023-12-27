Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148712563
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 01:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miZdwSDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86A5FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 01:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703641096;
	bh=duhGC5xRpMy6K2yJu8qKzjLm3no+AcCrDGjcV90NzMo=;
	h=To:Subject:From:Date:From;
	b=miZdwSDHq91wBLlJLHFeEMlunMue0+NCZ/Fn9iAtO3m0pHyUO359U8MtUP8/Ikon0
	 JDoEnHvCQNwO5p+vVy0nU+WsW4gj+V2iqzFv5GzOXMyyl8a4VORRvcO0fPOZnMRBsR
	 aS51Mti6kvk6E6AIPdpdFF8ChWXxWDH5u+5XfDDEqTHSiHIWOROXwV2fWCJ1FGcaN5
	 XMjEthy44ttg2zz01rElu8niopple+ky0sDNjJ05kJ73DfP9tRRANLAlCn2RKlpe5V
	 POV7oQHXnfysCTPXajZuhy7Hkm3CbVL0yBe2DfGe5Dy0lq4NtrV+R9gxpVfk0+/rZw
	 G0sgH20R37vgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A1CC46CD3
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 01:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170364109639.18774.3336757755725431184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943b1a464cba8428772671e4909d3ab6cc16dfea164a472cb1a94ef570aae5c7
Date: Wed, 27 Dec 2023 01:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703641096
