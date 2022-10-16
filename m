Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22447B
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8163AC433B5
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665883853;
	bh=HbSk5CNWnjuXJ+U6d8irpM3jWkfh6bVyKbEmG9C++e8=;
	h=To:Subject:From:Date:From;
	b=tb2LuH9OKbF4vjwxxeiFuqCT21DNME2TTRGe0l8P7L/UpNUXmi9AvWy4WrEUyGIQr
	 5O4QZcYjJGlVvSzlmPuZ0PZo394yJS2WvwdUEkNmlLrhaPjIePvkF5AyaNcY//IZP8
	 O/yr1VA2UMlPrZuSYg5BCf1P6KpbGVz/MrEoKRVBMXie+USvuSN7TdflHChm5qvIGn
	 NkXDRbPa3BSoAqFwTqDAD2FB84/eytV3c4ehX81/BQmurf12t3uWzcBNgBjdjB+mpY
	 IDLNS+ujBlmIB28daNauFNxSfTnljjj6tzeJz1DnaIGGp5tJ4JFXdXCccOnDk7kdXU
	 SCJgLbzWSlaWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66339C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166588385338.6171.17649650825987431395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a7899caa8ab51605e6a8d377a496ae40d4e3d985bca76eb1ece6bf34c638eb
Date: Sun, 16 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665883853
