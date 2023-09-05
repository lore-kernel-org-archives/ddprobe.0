Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627D2DDD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 19:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D37C4AF77
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 19:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693943048;
	bh=p4+hZ2za6Diit4gX+yf063A4KDef1/9GrPUOnlxgBjU=;
	h=To:Subject:From:Date:From;
	b=ImUnJ7F/kOP1z0EgJV+eqV1SvG1/CygNcce6Bs5f2TpjFrGz0AgqtsZ+K8qkOA6bu
	 duKe/sDI6vsexaMPVBwPsjD9b2gC5hX3neHfZor4IQ1aGpYUE56NpJdbhNHkZtLc6t
	 V3a+uo/ayovYbXq0vZVr3f7HJTRgUULOgSzGp9ED9sF5WqkK65C0p+qi2pAkhp6vUX
	 Pv3fhcvyA9+hq0mtGC3ySOcaPM73XYp0VXJzn9JN+oA8IVJeZ8J3l3HHJpN52ehBgC
	 1zHz9Fu6asQ8KgDfSUI2VO2oQJIKWcC0s4GXWJRA/nQw8RUWJeiqyo8WJ62Y4T3DK2
	 STbg2/crf9srg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECD2C83F3E
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 19:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169394304877.22288.18032994538852179606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bccb081f59940c924b3c95c4a432481cdeaca84479bbd0c8b2387a777952434a
Date: Tue, 05 Sep 2023 19:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693943048
