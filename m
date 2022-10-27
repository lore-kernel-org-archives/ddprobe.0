Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B08571865
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E146C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666860054;
	bh=R82Arfk00VLcZDr+vhyc3DlRHnOfitjBqcHstlnUNQk=;
	h=To:Subject:From:Date:From;
	b=ORa7BPLizb9EIxZsvuS/tRaQtAnGjqRnxVcMyjorpfjNLanF/8MjBhwNwvfUkr7aA
	 8VdZUtFRZjVMEYAwRrsLSQflFy/wGDHoFvPzc/nvyaM8M/IuJak/7ir/iZDfzv0cYy
	 0fUQG9GGOdAw/hy+3OwfDxXHr0t8bNL+ESHyNpobfX8HBTgZEIiCh7Y77ocusIGzyr
	 GyqBThNdNx4SCQafO4DRe9VrxXQAb3P1QU3HzX9335XgHXwDBvMagszmZxBD++8zLo
	 A9L4XT8dnHSout/m+FIXlB/0IyUpj1jMOW/QI20BKhG1C1ekyDsph1XZC6PvzF63DU
	 b8XUNHyA/3p1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535C0C67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166686005433.26065.15196008758941169820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 920bbf3f80d77c7834dfd5ee26d93ddd8a9e223f93456cdedf8157e048131441
Date: Thu, 27 Oct 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666860054
