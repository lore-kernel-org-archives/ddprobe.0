Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC83E5A88
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69AADC433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664566853;
	bh=0s+v9AzKEG36jeOYRa63oGAK24+GOt2HUmeNgm4ZY1s=;
	h=To:Subject:From:Date:From;
	b=CEznfd9gI7H7XScjb2RESJPThkLxEiVZjxlDpjs+zpaxoH9hNehp4QOWfok1CtBWW
	 ICWwYhLhPuJy27zcyBLfQ/ax+6UldCMVm87z9L3gwWIMHbGVRV5s0rVmyAJRq3luB0
	 pGPZ3dJAmwm0hO26nZ1PGXftPH91cMwinyFrigTsVj7prXDR6J5UpwV04KdAqurLZX
	 rs6egY/fbCszPDnhAiYr4h83sKmaRboTktCNJ4okz2ryIUuqC+/1ubh4MbIw+yMZQb
	 5S1ciPI7DzK+A2AkPiiZDI4HMQ0gKiI+Wc3cSW6sNzANnwfE8BPxQkidlxY5Xs+sFY
	 NCAU2vIhNOh9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51551C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166456685332.27481.345710480418115791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de3b9c36504a3db96f9912cb94a1f5f93e8fad41af2c84fdb3538b046469458b
Date: Fri, 30 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664566853
