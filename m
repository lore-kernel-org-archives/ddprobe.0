Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18720846C
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 14:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66ECC433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 14:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678458905;
	bh=Mx8/qhbfnjutjzh6J7E2sN0ch24jB9/bTrjxTLySUl8=;
	h=To:Subject:From:Date:From;
	b=HXaSmlh2+t/cHJ5t8fvZ2Av4m2Ooc34qDVMxah/4X6zy7k0alvESUmsi4JmuQkVcG
	 8C9M+DjCH2i4rsvNF3rT5otNZN/yemEo93PXP+3IPD9EVw6vA67uAi0heqSj7z1sIv
	 hFkaWy6BtOchBqEZsx/KEHGWZIxsMtKNmAwoA+2bQ5c+a2+Ja72/PR7lEq7p9zPtK4
	 uqOjmUzKQvGspXVkdF8uRDzTbg6QiPGY+9hLciV85BcxW3Y53SzVq3mxeEeZMjnJIy
	 vcVlyMkZDiGIU0zsD4RSqzDYhSHY2nX9XVfONIJkGEr1H2U5f2tvVW9Bz8aR0L1G6O
	 bBzyCDyyqPs7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB0F4C6FA99
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 14:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167845890575.9668.17700595101489300185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83b845160411601645cf661f5e740e00d482345841bd84504ec96a15ede0940
Date: Fri, 10 Mar 2023 14:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678458905
