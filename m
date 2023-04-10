Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 707BE23D3
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 06:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 277F1C433D2
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 06:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681109466;
	bh=GQKxxX97ahhfbB+ZyoGyQrdnSKkW0XJ9oWhuEkXQVbQ=;
	h=To:Subject:From:Date:From;
	b=WE27fvLkq7d1zDRncamQn2jCrX6vJns9lHW1pvjInwGNcwFEUZNVsoVry5YOa4riQ
	 KoFr0PxFXpgSLwWjVR8AFiUt1B2bCChc/yyx+EqSwch1VOVKVRkXCx4NBa/CXqgPM0
	 fQU/0n7Ph0hakmmdCA5rZU2V8EiizcTMOnb2jPRFNxXH0irILjDakK4r7EjfWtpe6z
	 ORuRvLct14iMCGFBwOzEtvXeNOsnKhX2bh5MYH76ds4BKrum6d958CfXHCtUivWpK5
	 NWfdp721zgJvSDDnpKXGD421oRjyYO54jAurSGx9JZgtBPB+FIqQWjHG4mw9VXPVYy
	 Nlg82S6bvxcFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C8FEC77B61
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 06:51:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168110946602.17878.12015985171282093605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7a11dc55def4400bf94b7e5d3e78cd17ef59efbc449a0520ebbc43d6ed275e
Date: Mon, 10 Apr 2023 06:51:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681109466
