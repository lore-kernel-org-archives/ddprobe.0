Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61103FEC
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 846CFC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672857687;
	bh=Englhkrbul5nepDgMjazUQOJvaRAFjK97JCcWGI6ajY=;
	h=To:Subject:From:Date:From;
	b=U9vjSzOELQcMewI6S0TSLm8gVIoKePFVwNOszuf8NFDHevqKQ70NfjEVD2Ub2oVQA
	 xWPsb3vr3nesKiTqPyn4OfBih40AQSmewvrelVHb5a3OLGoY9STDUFQeBHFhus/FXX
	 d4lBtyqW6cSefup9ef27+VWYPZaXdcck9RiZN3tW2acH6A8nVEMcwJLfgsOS9Yt4I1
	 0ZleKWikGAM8wBV9l4QnFnODF14CWDYo4uqxl803q8TECc2D/n7QpukjrIvcRfl4Uo
	 I9EgMBmrvgN7OICXZzNQvx7rdm/c4ecMF8YFtHkI7LlwLm/vuHu4r/5DF22jf0HDeW
	 pjhDhu7TR52ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66AD3C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167285768740.15924.5554824334591062057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ba518c89f5baf605af9465a20255ecb86e4b7668f6974f8ff22a2ede4c5766a
Date: Wed, 04 Jan 2023 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672857687
