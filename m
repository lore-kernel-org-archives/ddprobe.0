Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE996FA1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71659C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669830654;
	bh=IkthVh0OH1x8n/ma7NX1vASkUFZn6uoxZCkjKnE+5nc=;
	h=To:Subject:From:Date:From;
	b=TnJH57Vm6zS1aF3MYFVx+Th3Zam/phu+5vbhh1+zjqov00X1ZruzTMUHvfU04lcZ8
	 TMjtgftqcyMZ3PQgJa9K1LQyZm6x595hHDhS2BWeqg4q8KcHxNpTn0y5Oe6ipoNIVy
	 +/7G53BZEoOPXZ9QQL6laxNr9sVqvRioUkvmYr7lHJnuMpY3qUzlXT9hhw532qy8Wb
	 tYBvKqKfIrlj8mBSkknlTVVxXW7PnzUPZu7ds14QCy9oFPib9T5nJszyxiD11EbwP8
	 6qDeNsCqmZj7Ummc3hDQQzT/NTtgYJg2sBnW2vY0BKTospJAnFPoRY3uyYFBVCVjNn
	 AFv/ZF8Ql0miQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58943C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166983065435.5513.17357468287047954955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09600c92d74df4ee2f6bb642a62c8c383c32bf418966513695b92a2d161d1bff
Date: Wed, 30 Nov 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669830654
