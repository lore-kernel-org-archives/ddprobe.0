Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2107C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 05:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10399C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 05:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679463546;
	bh=A6UdDMlv6xx/mD2qCSQvd1wcy/yumYkxYb4OVqqyR4s=;
	h=To:Subject:From:Date:From;
	b=USR57BB1MJEKEFLE7yhFMKm/EtFhnA61vgsVd8pM12Yw3MEMD66h/ZPqmg55ruIEn
	 IZfbLm11v+B3oG38dgzMThAql0/ZWMfNrNhr72yaaldqZZ++Mm+nc4v6OtpU3kTKha
	 /TqFq4TLBWv3+dcMFhTHBh2fnIQ5QXgvKO8M7aQ2ZJ1fRwPLC3y3BORBCcO4FqwBjU
	 47wELrsz1yVRQ6GSgWrKjpcVJgI8k2nYB0+Vdy2o3biFQtNFsoZ0t3PzJQuETDz8Is
	 BwoFbyb64FXfTWzL6UjtGDctOAOaVfHnc6zV9Wm469Ezo5QxGBUIhcVDHxvR8e7xGh
	 Jc/OAUhjCwTzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3F9DC6FD1C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 05:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167946354590.17630.1525306686817095494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1441356f3ea7e3828ef1f2bcad6fd221b679d335ef4b567c6bb443859b80e479
Date: Wed, 22 Mar 2023 05:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679463545
