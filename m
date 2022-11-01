Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8C37E
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F7C8C433C1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667299254;
	bh=BGNyTlFc09LLYVU4K56XVHOXy/W4jt/7tn7w0LgV5N8=;
	h=To:Subject:From:Date:From;
	b=d9FtVvUo5Crdj4kqgQwu82kXQHmINpfBJgMiD1Pd8nX7k47bLKyoAX5oajnS8xvGm
	 xZF9291aA509XAt4EgjQHUx1eUk6/9BL3aO7RY8noP5gM+gKvi/a0TMKRGkt/v62iD
	 WcR/3CTbCl52her0caY8E5aydEQdsIO/tzPSrpt/GJN4pRrbuLrQUhKzpAw//kt0gL
	 InxRQ6e4WYtSbLu9t2+AbzXsWrPtZ9fZsamqksC8lkMCUdqq53ctmjiDhae+BI1N1J
	 krCBVvTypZAyMF/TEVBLqoiHgkKuq5FSMEl/hC5h9u5sX6R1m5P6z/N3Wph9mUadJ1
	 v8QvRyCKLvh8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E3CFA373D
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166729925432.19758.2905133101965727148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f73280eeba18751df62831039e929b83274c9cd8193b883195aa386f63a3ad1
Date: Tue, 01 Nov 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667299254
