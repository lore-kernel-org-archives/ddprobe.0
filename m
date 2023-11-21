Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB4C5810E
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ptyteYt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83860C433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700606296;
	bh=jg1MkcBm5PGYP3gvK4TkkUP6p9Nbbg0jkHfNtWu5ZWA=;
	h=To:Subject:From:Date:From;
	b=ptyteYt4//95asYMa556k1wD8cKQKVp0xauu7a5g66TUL8nJ0iqJUANluByzW/qKt
	 YFU4HhM781l3tu9KWjzceIQIEvwEM0+po/1vduNFnEMlbhOMOYumQMeNcQecZhuti/
	 cbP6uRwroLMk7tnSYuFZ3Igww/qNL2VDo0u3CuGvAGrw/ygM+t45HikyzlR1mu7ED0
	 Sls6APJCKS+5f7x2lt4KJTD1s99+NCLmXGgbM5kixCpWZ32J1fn9Pl3CWCRpffadyT
	 BEFQ+QzrubpZJlUnAupdEAbFxEL8rYEXr0oITd0EzBKwWKnRZNEPde9Lzo2bd94mpA
	 dC2UmadF+e6Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6847BC61D97
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170060629642.545.4300025261459784837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b72c05e1f5a844e40d5598f3d614c4d23a327f371fc86d1aef0280527e9be22
Date: Tue, 21 Nov 2023 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700606296
