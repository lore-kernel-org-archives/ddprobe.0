Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF567B
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74C75C433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661401852;
	bh=wdVT+7KfWfPYSrBaWeJLYZi4N6P2T4BBjfpI7kdEtxo=;
	h=To:Subject:From:Date:From;
	b=tAapG/v9SZgREZpmSCjdzKJ/N0yBIJXg2iZNQ09rQVagchBGBzH2IRAzf2BAvm6Vb
	 tAzTzqyEP9uf+CakF8D5B0HGicnigDU3TXf0PCVwQr0HQWx6ylxCtmwaK/AIsbgQcm
	 NMcfQIrRlnGnzrOOc0qmNsA0WVtOdKc8iLHD5QqFHvsq/eY1INwan3hFy9BkYj7wUl
	 iUwvSTwvwjKB5KidXxOF31L5Rbo0x4ruExg5PQWkUrM9H2rLIcoXjLtZBM2IQO1Nh8
	 CpFu7Q9vZC5VoiBYulduL1YxQQx8iZ3Y2LV4lhrfpyZcITLauF/R5WUhS6Qhe/6AK3
	 IwwlzgeEnWCXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A9B9C04AA5
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 04:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166140185233.23853.15778201911299663962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0904bc239a4ab9523472f7ed7b6f3b8077bcb461e38dc02c8de6a2e0a15eb04e
Date: Thu, 25 Aug 2022 04:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661401852
