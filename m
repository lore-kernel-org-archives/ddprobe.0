Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD35D1847
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8214EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672365687;
	bh=/IBruHk+euqkcbzaAXXqkc0Vq/r1gvmRFlmb4a3YccI=;
	h=To:Subject:From:Date:From;
	b=dJIHkeuee7p2Hj8qu8W/WjbZZ8IGAZ8hwS3eGUHp5HuxNZf3jJgGK/pWGk+kJ2zDH
	 kyh7XSBU2zZNZxhep3vwtjqaGCsV1J/E197+9kOaeVK0l65947WzOtmD8M6gg/Tael
	 GiRCyjSuOfoyfSTAHgGyI7TUdYLZ2iR0koBeShmFe9kaVonAkmY0OmyrmrviQFSnQL
	 XvxBApiLOhbMMilyMZRgwzt9yLgUquLdQoOBeXCD4GfevuarziPZ93bt7rhKo1gv5k
	 QwnxRzlrfLr80sPSVTyGv1/pFF9QbnZ/900LR3tho4Bdip+Qkbc1WbrKULtOTQrp3F
	 rKwIWVvJsfPmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 677EEC4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167236568738.12557.8613480953142065066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32692706f7d90d0bc7c5ef04a09851986a98c030762def2c5567eb07af3d5dc6
Date: Fri, 30 Dec 2022 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672365687
