Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59D5A23
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F60C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668241254;
	bh=06v8tgC/9wvooiQdHu6H9W3Of8vprZXBELq6penNXDQ=;
	h=To:Subject:From:Date:From;
	b=uBLG9RXKkg/OlHeMzVgua9sNZ0udZ9f0Gb/rWZ3JMH8pAxBiOf8lUlRIhWim3hvOU
	 igyrJ/JQaAMi27SqIzltQHs8o5FKmo/2tqIVo0MtW8cngiGCg6xHBiyUal+1tGGmts
	 dYKT3MaMJ2Ic5ZQqTNZcDzaIUilOki2JmOHNIWrA+GZuYP3mRBkBnGfRey+TUz3wd7
	 N8WzCAHqER4hdo5LIOq6zd2r5nzgnf4ecN4JiPHjOcSGULs0AXh4L9d+rNmndVRwm9
	 IPfWyvDYMeOk0a8gqbRVRaXoKMy/00NJkAfolV22jSX/Tbv49EFoiiFE4ql9p9BktM
	 fk4ikwbiEZw5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A79C433FE
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166824125434.10010.4632974160581537072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99a43e032511f257886b68f167e4fd8c99aff54c7ec2de9201c71b3b7443f294
Date: Sat, 12 Nov 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668241254
