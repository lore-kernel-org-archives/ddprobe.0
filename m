Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB781374
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E1AFC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661839853;
	bh=h9QfHmGnicaVeOEbAkXl/gKDQ5qypCkppKd7D7v2xws=;
	h=To:Subject:From:Date:From;
	b=GEe2ZcJDBNNZf6Dg4+tdzTlx+48XHFdj/JuFNpjnqvheHnxzH4iXQ4N/xOvi/5LOS
	 1reX5HJBzJ1qjYruk1euYid0wCsruqtp4DJbClZZvPVwBz8xPwl1XzYiBd6Nh4Zigi
	 sS/SiOXT6Aotv5g4IwEe/YJ8yxy6MwT5LQnC+7Z8mjwMkkjOW0CCbqLJNMORzGCdHI
	 Atz/xS9lTko2z3orIROaQbhAJxpAdzxX9oqn/ctPjj1qdNBFhtXXqFgjNY8666kHel
	 TNqWMvQ0ISv1MwY8+jNfiyUDHzWzO2P5hGD8+oAV1nqtIBAsw50jyX7Ggpqu5piFkW
	 0+dqwAwO8GXMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62ABFECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166183985339.13453.8339681990844340875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffab44747ee38ed494fba2ffdf4835c8e72af09177f0992ef255f5788bc9dcda
Date: Tue, 30 Aug 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661839853
