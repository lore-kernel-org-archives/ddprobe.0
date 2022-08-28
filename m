Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDEFD2F43
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74F5BC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661715652;
	bh=RjENvQ7W8tjjWpwW9G+ZpYClY7ccYYrcERoWwq5o+zI=;
	h=To:Subject:From:Date:From;
	b=FmposUiY/r5eX+8AUDapn8EzrLVOWRcDVfvg2PriIMIW1ux1vbka++OvT/qDrrL5h
	 8pEQ7/yk+sbIvymXiEU/Ku58nnAXyKqNpbWC2Xdeop3QpkmZEwGX6ccDr76WouEJaz
	 Ln2b3mrU/hNIeCdOEd+/5gaw+Yv167j/wH/D0atB5C7djLQwu2Cr/pPW9ZryzGIANT
	 Qm5qsEkMqZ2HHOYbusL+h7BOEghsMQ6uRmchd2fQrCoaDoeX/L+er7zPnBrSV2A24L
	 tzc/3bas7yrEtRXw41cklaIQCVwf3FyQghb5ofY8DQooR0phJx6Hq2f2INnf5T1SDH
	 87HocIE4L4YGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 544FDECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166171565233.31289.17582219889452091441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfcff5e16369acf1701b780f4a578ca4dfa9d6f6c787e921a18962fccf472ab8
Date: Sun, 28 Aug 2022 19:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661715652
