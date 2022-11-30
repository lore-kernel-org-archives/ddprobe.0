Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51293214
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 697E2C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669815054;
	bh=Q8kmKWxgD6XG8bVkeeTQGkMeh4ZkzRX8sRd372qx61I=;
	h=To:Subject:From:Date:From;
	b=qwMh3LyozDML7qefTJC4O3PqvaqNtbe7awBhoxFMDgKZAKE2/XpUL0aIli7b2UDF/
	 E0iepG90Mlrb513N2+8EuYE4kZmAum6ZBkEbI/ereY597Gdc5dI81AebVrA5DxvD9a
	 vM+ndsuvwnApeyFzB1JfEQKC0QqnlftrJulX7xn26kbhl2jsMxCOFqT+rpt7hRMseF
	 TwpKfVzuOhwoICRgBXihBcbwIqs0oXpEIrnKG7dmraj09VySDclTc2n297Y0NgjQnL
	 dikk+sHbhVI1rEfhTYHFJxlyuxaFQfDP3atKfOXSI/8cwdUG7Nyi+lVcHLpWavLUcS
	 InqNZ3+yjhK5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FE5CC4332F
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166981505432.19796.8818425593693107510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632717099adf2dcc1ffc676da2871a59288f04bce62f675ba447ce2048c9c986
Date: Wed, 30 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669815054
