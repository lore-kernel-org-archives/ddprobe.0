Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C346015AC
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD7DC433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665449453;
	bh=E/sJsLFkdo7np/i0tytLFNbBICQzpS6vZseIbOOrwWY=;
	h=To:Subject:From:Date:From;
	b=mTBA5ss67nu+K9nTnYIya/dpFFrGjB9IW9WOlKxG1ZE6CDm2SDsHSvG7ANkI2GUG9
	 wBo6M+KcuifyYO7jhO4xJyXZJk3xBNnk10BGwMEIuThLgEiGlVFk9hZ9scNgLep9ni
	 PVdws++ve8Y3xoS75xbAHRLchHo1nvX6z8JrGihEVeWExFNXAz2jEaVkZb7R8DZvJ0
	 +gOL5a8UtMmwdcT71hXkPOQcy/F165umPAGzAXnG5C2Wm1KsphOqMI2hiXd0ZRSWO+
	 Ckarqdqux2B5Mv7uJ0XSAPV21HeQ8h8CK0GB6kQZ3LlCQ/8mgTg7K83qwcyErpfF18
	 bBXsKnLnr1Z+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 528E6C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166544945333.27426.7425588484236457220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd7b0eeb4da6cb8550e1ce22bb03684bcbacc28679fc86e02af9c9e659343e85
Date: Tue, 11 Oct 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665449453
