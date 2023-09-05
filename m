Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410F4DDB6
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 21:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F2CC433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 21:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693949648;
	bh=LMkGRaMTpR4wROyGcNWOQQZWLsgAHSskUIHA9XVRBCM=;
	h=To:Subject:From:Date:From;
	b=to74p6whfc0t/lYvq/MV8o+Y+JKbq/18rKycIZfySrQdouvOLBpzgDATXtzucZhLo
	 cWWh478IxTaDdh430ngFHqe5EWcL0xrgb99kSblQoI5vmNejzzVO4X4+rMwOVFudnR
	 Yb1KRD2nzkiSvwt5c0w4x0KWmED1HG9dxfpRc8jIRn7O/1QocVEDSA7sfiuLMqE1mk
	 FQ7ITc9YTkEABjyleYh1DEez3Y4CgrCEV57oF3Y5r6ZooOOeDrV86QZqQoymnAAfui
	 V27SEsPENWm8lC49zw7+Ek65mvGFxOHXlKaJcYaB75Qobuw3+GRKEm+5bfqi0dg1Up
	 n1ZbILxysz5iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A61A9CA1008
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 21:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169394964867.1846.13381884123429887339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e952db48c51aa94708352654782af10a40bbef0a6f991fb36a213408e23ab43f
Date: Tue, 05 Sep 2023 21:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693949648
