Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C663FC2
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ECCDC433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666030853;
	bh=QhRZjsuda4L+dPSVIHH0XktHnrTee8mbO5/dp49Lzxk=;
	h=To:Subject:From:Date:From;
	b=tXxb8lIHycA+BSNZixTOrGsDiqfiBpNSQSnEKKYO2sIRdMlBWg0JdDEFUvcApAovU
	 83NgbBS/dRJ0JhcJKjYlUo95q9wS940hIqByH3ZmbVV+Qv5nuUItREzZqpaODwhz7w
	 Pi8RMfU9455gVNnYIp6CAGNdJAR82009q61vscD2+VpiCfnKwE5lFSRPP2CH0dtTUj
	 4R2KCb21nRNi1YtDZlp4/ICM285soNhMC8f8/mJtqWrnSI+XfInJy/FGhK+9ghvLkT
	 qBwCnL1/vEQaAatq46SPii+xpHFa6L3gHjh2rh6981S0bHtPurK2cmSIg5nadxwesq
	 oojNwP9c/dXkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56971C433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166603085334.14227.7206801967329982816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a021096e6ebd5a09895ded365070bd282addf419820d4986bfab292f565a991f
Date: Mon, 17 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666030853
