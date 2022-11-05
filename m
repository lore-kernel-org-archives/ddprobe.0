Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50DC7C
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 21:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85B87C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 21:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667683854;
	bh=xhaVQPLU4V6+SFpCT8Lk8uOxD2Mqtkb9SizsS/DOb88=;
	h=To:Subject:From:Date:From;
	b=Qlya+OOCAy8Ln8iJO/41ZrQKpHyK4DUrv6m4wNy/JJPX6DEBwM6cqM8jktddvyUUa
	 ODlc1FBgADBipAD7SFyPL5RjTG/6AGkiod1jHm7UY/+f5jQ5H95wS1+Z+vro3auB3E
	 oBTOCPCKFTsd6BaQ8SLKlbDqReu1Er/vT9B6ypXQkhRHEiAy6ksHvDWdLUboX2zqqH
	 Vi2pcNU+dCnEpBV5sFPblM7S0DUVU50BF1ZLnch/5l/Kw0HRA5LTfZ8Com6IJxK1JF
	 PAjG1PveYv7SkoLiVML5H9DYWVeGgXKA+Mzpzs+JddiCE3NfL70jJ2Ip+zHm4mi77t
	 sJ9Mc257e4kGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B8BDC433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 21:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166768385439.30056.817959942570996182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ed5d3cddabec4124679ad6cc6a9f1bd17f16280ee2782e33ff8f8433c10e967
Date: Sat, 05 Nov 2022 21:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667683854
