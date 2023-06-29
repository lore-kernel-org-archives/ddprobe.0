Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3B11842
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 03:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8257C433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 03:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688008388;
	bh=Ac4Jhl8e0Wtr/3kDptIyFnVci0npx++TO8VGQoOL7NI=;
	h=To:Subject:From:Date:From;
	b=f0KxGAS7q92tpBPa3gcCqQm8Cno8GUQ16i8Jgl0wImsjgRn7ENlovzR1w+NlYKv2W
	 HYnumLhmfgSVh6FgJu5/rjRNgAXss9Gpa6U6PLtzcQdO1tdeHPG139ITPSpSvSqho1
	 o1qOLa2AVLE5zuhX+/ZoDb5JtPo0uMvq7PkTIl43WS6IiTPHvTyhq4a0vsgscV5uwO
	 FDsrFk9Lic74wAE+MbHoHe6FBb3gxtQ4ipwaACUfcKj/m6XZMXcc73FJX8Mm/IvCMq
	 s2KoFwrTRbJkBxBqKUIx/AKEUKAQBK6hrEP49WxYdcINLJUWFIDNvx00wXm1StFjx5
	 a1kz1UN3p0krw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8213EB64D7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 03:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168800838869.21727.4424751121672648121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816f09682da145a712ba6ae8d3c525b593ade8ee62725dc08837f04fe0b36949
Date: Thu, 29 Jun 2023 03:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688008388
