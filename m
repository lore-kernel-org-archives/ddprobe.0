Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C467C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 02:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8562C4339B
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 02:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683167465;
	bh=AVHcPRCSDsIYfVItIFU7npvrG+5FuN/Us6MwlA0LzEU=;
	h=To:Subject:From:Date:From;
	b=uI4t2a8ao+1DiiNFbfPET5cgOwginJsqXNIBJDRP97PMh9c2Ok1Dn/hm6WJp16pvp
	 mEubv3M8+1Ul8wOKygS1WiiMIO6ISuEXQqmmQkGHNGq6kW7nqlIFSvHhKda/eFJfEu
	 7VUnXgdgjdlN8i0Pi3uq/Z8scsrrZqijvxRfHAy6WN0EpazMux6g52h2U3slMMgP4P
	 rZ+DEYmMI0B5+OoW49+FvgnluloE8Lphqg9aPJ5OLUxk4BZeulCG7l/8FD9QADK/CJ
	 EZqSnJkD+zYbDGOm5vm4YYWA5t+mk4wPb+fLalhqbRnsrgbfOnHOoQJzSSs242y7aT
	 sOIuHkj23X96w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0608C77B75
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 02:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168316746577.29330.9377529295764191900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632b6a0fb5e9f92c393bfc5a7282ea6c4505c337238812b4777b3361b1519357
Date: Thu, 04 May 2023 02:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683167465
