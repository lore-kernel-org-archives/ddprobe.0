Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8DE650
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 05:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3543C433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 05:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682227865;
	bh=LWPBKab9yHZdsr7IBw6D4/bUa2hyswR0M40Rxy7zSzY=;
	h=To:Subject:From:Date:From;
	b=pMPx0et8NhYUPolJjsIEZX7VF/uK3D4/fE9cUuXY62uU/YpzKSnkX5aUUTcgHHKHi
	 I5gx+dTiSo+1i3zZ94r11boTlA1kDzMeyk7EFvUsEPk+jcTZHB/cW2PihaJgJuya0e
	 yHivFsP6UywpHl/Qealn9bjZaqwJoUX4xoJgxhQ3S/SiYsoDcDyZzO7tZXl0FgKBQi
	 2yfQZGscsvnY05rnlLIHBsPch//ktDGMfNgEESDhJ2Mcfig2BlMc0xE4Lt0btl9n0S
	 aRi7qRggxMUFpOaJiWyAwacYXQ+BGu2R2FToRxRs0NDe7zrjFmSRoBkR5542AsRahv
	 2vbtMIEeC5xog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F9FC77B73
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 05:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168222786573.3159.3298907614863354426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227522adc5f8085e02af5b5cd77132e4d60b6681b464163ae4907bfb453c418d
Date: Sun, 23 Apr 2023 05:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682227865
