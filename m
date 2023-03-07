Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C54BA3F
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 17:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8881C4339B
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 17:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678210805;
	bh=AXGNgMv1cjC/nN6C3OshL6an3yZtSmzLHEKn+l8GwH8=;
	h=To:Subject:From:Date:From;
	b=HlpL5d2lfDtsENgLHcGTKMIjSYo3G6YyfJBfv4T3aBl0rV3iNXfjVsM6pKvGDCBFR
	 bWFKhWmG8FGbilpfO7RwAqaCZ4WACPotbzbwf/E/vWkp0KXqj4c3W4YVRy6mA3R+6w
	 jO6bk00VWGMrSH8BfnpHHjzi+oSQICeAvtZhtE3zSwt91VXOoLOKog1SSVl5leaxXn
	 xoeLAYUffsQcTKIgOSFDxqK7tHFqV1xZgUlAKgwaYXlbpYhcT6MauXxrxGVzB80nP1
	 bmlzEnb5ilwtd9nyHpU4k/J9Ffq3WLmrzw90SfBJSVs5G3UFgnbmc/HiTT+vCLtwUp
	 JFNiQdq5mDnUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8509C678D4
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 17:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167821080580.23325.3773911682843994655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310577fbe81c60b33bf720529304b7d0380bf2f3d1b50a6eb57a93152158664d
Date: Tue, 07 Mar 2023 17:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678210805
