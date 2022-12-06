Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B384D20EA
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB59C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670363454;
	bh=4E7d3VT14II2T9pLf4DnmqUtal3vtazRBUd9HZhAe+U=;
	h=To:Subject:From:Date:From;
	b=QtxXt3hQlaoO0WqchpuvcNwa+/Hr/yLiyYTJqnsEgNsmzEpLYCPnI/2GFZJMX1xGK
	 GT0krqFLRBY8AuLAN78y7gEhYAnu4i00yl9LIyX0/U0wIaYFrR6RM0wwhIuyJh/n9B
	 vzTdCT829dQRHz+s44PL4XD0rGGjIQ7gKVWh9TaNMcnUltnglcDSZtg5lJ3kGVCdMa
	 KfyiZApbPxvZwvZUEDMS5mWFz7nGO0BYPkdrkzEpbGCXfErJ1jtaxKcMwZRg2PrFBE
	 USzyayqkrKMckO1ZITvbMmsF75Ao+GX1NAygdHzQjrRQK85rdKuYv8E6lHKHzVjv2H
	 trPi2a4QrHmdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5034BC3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167036345432.5389.8224804328642527483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b778066a28dac28503dcc04cd88b73c40337327d9cab8ddfc812ce0682007389
Date: Tue, 06 Dec 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670363454
