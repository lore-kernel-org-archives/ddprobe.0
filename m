Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D187B
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 863F6C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670908287;
	bh=oFL5S9TDBBblUi7HiPQI84Gxvqdexix9qAYXntmRBsQ=;
	h=To:Subject:From:Date:From;
	b=OjW+3ciNqiujIUB7GRXnLe6v9fLQ9XbVWLZxEE+1/3MkSAEoNfl+yta46vH7U7ftJ
	 JuXogfiUxS+y5bJivnZJITzx6rHNfSZHod1Re1AxErPrAlXvlwJiyG6xDMgj5PGdsc
	 LYBfoyggRAfRSfKj9rBuYRE3paDpIQYA4A4SLENZgyeGAIV+DghTCJQbnczNGWAj7x
	 orGGtuf3J2QkYt38i2xKeUoZgMAIcBkosSeplR6AMQdqiH0+OHfegTtgaltfHupiUQ
	 RGOV2HPWUF8Sv0Ngzucz1iL07QqCl2RhFWlfgzXTA+SXDDPH8zOUVF0pjjPOGqLpj0
	 PFu6+Jha4xDkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C88C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167090828741.28339.13030522643780620518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecce25cad6d7739f90cf931bb84c8f620a1f207798e366dd67781948bb66800c
Date: Tue, 13 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670908287
