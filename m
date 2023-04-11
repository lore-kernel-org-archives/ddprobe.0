Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B6453B7
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 10:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AF2C433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 10:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681207925;
	bh=eLAKicgiT0ES1oy+hpmAU2PEJQ12kdnwJVLaHsS4qZk=;
	h=To:Subject:From:Date:From;
	b=Vsyp8q2H+f3tFCX6vnrEL8VcsK0bGhTIcaAZZAMAzkGdFrhCFZiYUXcIvEgudDLgA
	 lOGMEE9SghEYsePZga3Bj0KSM6WxIVi9HnALsymHf88Ip2/VYcdCK0I89wBPEvzx8e
	 8EtHoYsXj4CRBWLr0W4WQTwID4CqHQ6MW9Tzlcj/uf+PDPFTzKuAZ0GL/v+jnCy8XG
	 Gbj77NOlXg/Px+I7DVZvUQIWj8hBiv+WKwdPj7Fk+KDOZPuwGM5yB33d3n46emLsyZ
	 IfMOMoYAJ9nLO974V4d0SVuJ7gXzDGBKLbF/4BH+LlHQDOamSriciDvBBUcE0DHeSO
	 OXW1lYe4KEQdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC74AC77B6F
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 10:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168120792576.27234.5544423657726969385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4f89db4f1e0e87da8b890588925b4a7575056e2b2c613db4a46a2ef3bded37
Date: Tue, 11 Apr 2023 10:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681207925
