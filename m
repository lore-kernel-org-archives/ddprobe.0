Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806CA8838
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 19:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2344CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 19:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678477506;
	bh=+oyuYbjKMgizOwr6550Lrt2SBwHkYnUxN5+gTL85hx4=;
	h=To:Subject:From:Date:From;
	b=k+hxIk5DStMIJLvywlz1s3DjKyt9Yy68ZzVoq4gbFUbLPyLh8tIdkz9nH/ztiF+iV
	 X+FT0GLfJLiG6QcGePaT8oOjJ80WT1J+889H6s8w5AlnZSHFN0fFe9EW0H4VBbrDHM
	 M31aHVMbRYbTuKeNZd3xhqvKJiYASi2ESHnVkorQGJUb5x78zP0A22aYZ42ikYclxz
	 dOti51vlUmrOJo47WctuCcsxSWZYDl1SkmZw01hh1uGK1994wW8jMQum9kmVP+HYpL
	 Wll9wra1hGMx12YWb8QxhY9+xii9jlR++2POrxG8yJ+YMDidZ7tjWou+hUjpvPkNN9
	 MqFmXYhTg1O3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF216C6FD19
	for <ddprobe@lists.linux.dev>; Fri, 10 Mar 2023 19:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167847750591.20447.8577575146864014032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11644f5d6263685e22acbd297cd2fdb4cbb4b338ea3ec501648159440a3db548
Date: Fri, 10 Mar 2023 19:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678477505
