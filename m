Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C564C28FA
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AAB9C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668968454;
	bh=HPUVvZ5G2Zc7V6tVR34bqtCXa6MurvNeIZVXmHpht0I=;
	h=To:Subject:From:Date:From;
	b=MSz8PJMG/RhDLjN884tL6+bDjBXF/xhwBLz641rlCDPjeq4vf6HkNAMYMfnyCROiD
	 jqIe+40uwDFpRXTc18hnPLryG72x4x7U3oO3ycDUJQ1sg2bxrjeXpQ7hetCpeuqq5s
	 6v4DVAp4/IMMHSrWY8SBfo8LKKfc8ErBQ8ZNBspsI5X/QuSXb0QfXJvMLszByCWR0t
	 RxzcK3OesUXFneDq/EEh9LP5GBSOWLywei7+/mkySeRaW2J7DiueWp2JvDcTakE+y8
	 /ccIj/LslmlyvUw459JQUVGkVkbFrl7F4gfciKuztyzg02xhnwXHGLOulyorX/aQlD
	 YHGKr8zmNZ8Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AC66C4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 18:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166896845436.14371.5650564938045362879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05c0eccc88c45548f1684144a591d23d32639285239631b84af670a08725ef0
Date: Sun, 20 Nov 2022 18:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668968454
