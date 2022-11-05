Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19231FBE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66A29C433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667650254;
	bh=+r/LeNLmN5vf2m1C91a6o5e1PmVX9IzKOZJe9JqPzkY=;
	h=To:Subject:From:Date:From;
	b=L8v20OCAWEQm0Os/4Dr/DjA6T1m3InNkVbWyvVJ1pdGiV4yLSSTnSbdte3n6z9c83
	 aDNiVZNwi/Ogmz+W1KctFHnqZxiVHCHo83+R5C/JFiSs1z4teikVUYZy991i6lYe6J
	 nFvz7BIu+YMcP3Z4ZA8nnXTacteoQUDLDwpBtWr5owgHmvfSRxH1YuwOsRxBOMISG4
	 nKgXw/8ESgSRXHXpcsRJkFz8L3qV6DKGAAUJQny7LZcMgYDcSt2g7w60WdHw0uC00I
	 nplp2UQC4/Tbgop2/N8+oYJH6OuvsrPJQv0fWbcY+Q0Zc3/9RAPxvgcZbGKMsxH/Sl
	 KCSYwC1c++AQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E97AC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166765025431.15709.13518265454971686412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace231d9b63072ed74d6dc633989edba995578d8b29ea68f4d5d5ef6ab44c14c
Date: Sat, 05 Nov 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667650254
