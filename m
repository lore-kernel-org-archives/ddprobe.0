Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B009CBA44
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 12:30:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6BD8C433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 12:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687091408;
	bh=QBKtJtltu2UnQjfgsLuigk97smWBBuvVp76WtjQFAoU=;
	h=To:Subject:From:Date:From;
	b=MYWWsOXd9jAp8bQDfn+odDbc6gxl+7RMH9d7P/z+fNZTKlZidzwn9X6V+r//jtLFP
	 bIL1xZYW2SSpaIwK2ihr6oBwBqyFFN9quPtj03NKlFK12bPjlvZ3wTAK3vSiZFROW+
	 jeZeiUqxgALyc81N25sYBldSAmNWrWXyzoisEzByre9gyfk4SZ8XpMRag+JtfYARHZ
	 34h2gfln/F9YTL062YYdGmd9sOCkHZR7d80mjwREGn9ruflynL/VZDIsLDo8gwSQRV
	 Kyn37s0sjTHqYmI/VHjABLHw6wuzXhXOjRV1KHt4vhqlaQxFafb+ZHjLwx9kPFIUUH
	 Iv/WRuIoCJ0OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA02EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 12:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168709140869.13226.13505812429161289809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d9dbd608fbb330433339674046c20ab3350a3e3331364569ac74c2d83cc834
Date: Sun, 18 Jun 2023 12:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687091408
