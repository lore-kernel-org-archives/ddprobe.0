Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42F77E5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7537EC433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662774653;
	bh=xH/QbTKMR8WAgXPITfdJjYQqqO29UwyFGLA65NvfeSk=;
	h=To:Subject:From:Date:From;
	b=cJamvrBDlSrtr9kWNDU0AqPWS0ZXS9/xsXFtV0t+x1WgyTQw1SZAVX+gMUbHNu+uG
	 cgrauqR1lmtde4rWUGWa6hSFWgOM1vtU6ibKRy/9Ana1JI1SHSGNPzf2+l0TC64KBx
	 aaAHb1tP0eVi/DslomUqP1SlW/d8c+RTr5l+4EVqfGyGmSMuVCIF3eIwMxFvYn4wYn
	 B7hFcGZW8/oIBmt23d5qke8waVRQKsxty4Ty9YjyjFWc0Azpu+xIfQEybXpbVJCX+5
	 21xisrOq6EYQBZyRAaZn6csABZGxnK3d08m9+ys7m2WKpcJ7Dw7rgrGSxmImjDyGTO
	 5wUMGXxnXjssQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5959FC6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166277465334.1023.4334808699325734711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de7ae42e1844cc01ea812820855af2546c5be16657cda631d50b10a7651eb23
Date: Sat, 10 Sep 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662774653
