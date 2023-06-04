Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721AA17F4
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 22:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB5D5C433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 22:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685919546;
	bh=3//iYJUzJinDJC6hr5Sw86ns4S9+bB47VrGge0iKj0Y=;
	h=To:Subject:From:Date:From;
	b=SA3jwiR4c4S/K+CMnc36WK5GN0AhA/TenFw+lHb82HIdJXUae9icPwad2qZdQZolx
	 u97+kzb7NjbpfiPe4A9UvezRpjtvca1vIg7sqqkXqbKLCQtY1iniM7npEBla9bullt
	 XyYYiuJAHCGgc3AhBlKwLrvqElpJDx46zkrQOQjcnNLwSJhODFvmdDMvaJwE6ne6Ue
	 rF9iyib8Bt0hpt0ihryBaXEBTqCrI45YIfJYJwZPE2+k3/50pybopiRM9nsnlcEcyK
	 rzMAlxtZyGJ6dJrTZuC/SG4waPKQci6XQEdY+k+SYWtb7Tz/XKmiHyI7LCsebJ48Cu
	 o6yk/7WPi5DFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC78EC7EE29
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 22:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168591954582.4298.17636220919863351145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5ff7ad05ee73111cf18e9b7cb2fbe2431760696451f3d568e9a5eaaeea04c2
Date: Sun, 04 Jun 2023 22:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685919545
