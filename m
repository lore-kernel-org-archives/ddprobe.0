Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBBC15AC2
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 10:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3700C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 10:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686047525;
	bh=jwVGuPMWvq41y8+A0LbVzTx54cfyt2S38GEeLINfv8g=;
	h=To:Subject:From:Date:From;
	b=CW/Yfa+rEVa3WzxcCgXi6PAXVUmfIa344cOaTeD/+Cg1DfvHeczkGNy/r9FNT5wUa
	 wfiueLpgBDowNvXglVJcrVAmNkXTUJYYnOnBKMvPYqXvonJ3NxsGgjnZa2VPMNRz7C
	 m3FCTixMfY7XO6i3R5hCApCP2OaJZiyncJE/B3Gec/bgSTvzsQY/GTWURVamG12jwk
	 Y1lJke1QEX7ohye51E85VADgiwWHrDfe13iKr6s/ANHBCAY3rwzr3znnvtHivK+ox5
	 NYmbdEYWKuMrZgyVfC3F6Qopk+sCWUz/NUtZVDnyWSxIbB4MGUrpWn2b70xqYhwCnK
	 NWaydpHnk9JVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB692C77B73
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 10:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168604752575.29899.13402943198240917602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9123d4eaf8c67f7eb3fa52eca4d3523294664ccba89efe7a8ad60e478cf570e5
Date: Tue, 06 Jun 2023 10:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686047525
