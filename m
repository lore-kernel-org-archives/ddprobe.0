Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0D920FE
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75436C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670366454;
	bh=uDiUu3Pzyd8ZmJ5BTre+KmKQUjIvF3Vani05KV92EqU=;
	h=To:Subject:From:Date:From;
	b=W99cBc9EIVhUTffcOxmNuimzUvu8ehWTmDh9AQDgFciiTj+E6YzxR3NyoLVXdUjTD
	 UfTUbl8WDVlZVtK3tCt1U0S6IFbovY06PpaF8zAE2cVSTfOH+/BGYTPEVuM9Qek8Ii
	 OaSyma2+KKomhmxxUcY7AexnMQ1bvFeF/F32tUWfJPOe1ahcBxjhn9eYhnkrEO0xZa
	 XlZ+31/pfTB+NQRys8W5DUa/FxAjI5GYZ2O9qAGW14/3sMBrxyNPYlPYZ8BGwpXx9e
	 GPhrraUMgvCf/KBjtpiqxoM0KCVaE6TLte1+fCfCA0x+1BAbQMufzGaE/Fg3v0kNEi
	 yMShqThXYrXLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58DCCC3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167036645435.16832.5363844529861141293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ff48a9d7de091aaf4bdce6dfc3a9b89c19f518e6d55c94ce346dac0ab36a7f
Date: Tue, 06 Dec 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670366454
