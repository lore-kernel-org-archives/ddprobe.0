Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9222566
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 11:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B37C433A1
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 11:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681819145;
	bh=p0+sJxRF8C9O+kfu4ocroXa1tKD8/aSfatqdaSxH8J4=;
	h=To:Subject:From:Date:From;
	b=NYj7gm86FxMgcaGOwwFbZVw6iwKr1WxEm4tzpJIWnLgHCAjr7biw5+7DDevEGord1
	 rfmf6yoPwCv6AD8Dj65RVINbX+vOzqOEpvLpvWRoGEy4jPdtK/whT9d5CrHJFbxuB1
	 k1Ljw4Wo7igDFl7cmVHwATFp4MFGsds+wVxoEv+KUnI+NDGYfP41qAlFtWoKGJ9cXB
	 A4epqjCaNbWlETah7frcHjQeBgn9qEb0CFEaBIJAEkj9yzKUl9TyJfA4eqJ740tsoO
	 dWXWgyz7beP3ATUt2ox0wKrNvYBSd2/1tHQG2OwWY6g5AaOFe0Y7+Hq1zCLuJuWu7X
	 rurAxkE2orf6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A94C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 11:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168181914577.30735.3816874257418053997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ccc0c1213c9d5afcc727856d4558a5ec9cbdf0627b9a5eb24e4f3d5bd09a6d
Date: Tue, 18 Apr 2023 11:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681819145
