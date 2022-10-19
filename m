Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C991FC9
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69EE4C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666147853;
	bh=Xcs4hxMSzX8GYgMrXPRr1eWOM/+HjrhAsfJ58cUAzzQ=;
	h=To:Subject:From:Date:From;
	b=SqRvRYuo9Lkn88LSoqQL6rAbWQ475TZ9V1zYfzk5+KJks0Qr78zeNmMQ6osaf27DY
	 9CrQpS3NZufUfDQNtjyv+mmO74rl5/DVPcPpCWUpJ6PuVg4vK2MvzSCdhsko22pe7b
	 qnXbK7G2y2oG1DkvqQx9E5AI2bNgTQgrowiHJNZCMcLmTo2W777FhrDS1XJbMieNE5
	 UFCuil9U81W8ZRl87OtEEMArptx+pgaJavGTLQUkYioerRYnxbAteEV0/ruABSb0P2
	 63V7dTclc3weHB0Z1NG46oys3Er63kJ2EkQ/UKhBq7m+x9jpHJkuGiwDL4pFae2c25
	 a0hsQxIslrHRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5042EC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166614785332.25953.13033893887468520314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97d51ae8e42fb8f0edd8e009dbfee44d97b907594315600a712451aaca2d85e4
Date: Wed, 19 Oct 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666147853
