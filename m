Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C327C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78114C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670226654;
	bh=wW6fdxwG5JDjWe9V0bSO7si6RxGkUB7McepmjE+SA5c=;
	h=To:Subject:From:Date:From;
	b=E/RqtLJXuVcuGOVx7Yo55yFwTSPu6WpTIljIp42Om5gZtK4nUIuTUZai7/D8kFgrS
	 6l249nnNgLPZqjvb4OgLKuBqE1T9INjBkbjCwGFPiPgJqe5fgKEjVd9zZgsev98Vx1
	 asVRQmerX00SGhtpXReBXv4jIoc97vadxuXgtPL6DlcJjbau1spqeQg67v3Y2E0JuB
	 oM7pWGht1zQZl/e8s3aYJiFoKag0sAe7Kv4fWVE12Y9//NrJX3prNrlAyVv9hMq0z1
	 fZKG50VWhhb0VbXTYDpmTgenc6L0/ee8Lj9QG3RVzBwLMRbYMvghHk9OybeENV4owb
	 BxDjcBaWWXPgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 581FEC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167022665435.7158.13152747964894857650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd775adb22ff533b8f37c391a1bc4480beea808fa7a01fdba9ada209cba0830f
Date: Mon, 05 Dec 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670226654
