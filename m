Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D311A20F3
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F029C433D7
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668159654;
	bh=3c14bF6YLDYmlSI9/D4GV1Dks/NXrNUG97LIIR0DjeQ=;
	h=To:Subject:From:Date:From;
	b=jd4IC2g71uyGvLIzsEah+3cG1oCrBRtwKCnXB5kPQtY8rVljWc28wK8+JNAbz7BwN
	 7lefVg+LkTZroe4Gs8fqw3eIfgZvNqQEf9tyrfNzLqgfUnv0Lgj2p6yiKm3pSb4xfJ
	 OMCyeMnsGOyjbHIseu8IJa7S3znR/L7Jon72vVnYX1pjSa4knY3vM/iRPExVdt4aHU
	 ATDUbo/umQVxb4IWxudzjYSpcQgeO90ioisWA/tUDnki4eWNF0LFMIDxijK1aghWFy
	 bg9RgcBBfalPzjoAH7VvcxDQCxEf5fQkJHGmlrRXKdjb3AlFi5Vfcu9GIinoOFl0hV
	 rwjCMIBJpfFkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F21C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166815965435.32712.2097790596686903660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d812187b38781a8b5c83385a4fcaa91222690d89ba3f3955a80834befa2fdc29
Date: Fri, 11 Nov 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668159654
