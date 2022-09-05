Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B30C315A7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66040C433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662367253;
	bh=ZHdpbABhQLhgpBtuGO0EQU1Dst5m7QwGTvgNN0I0V5A=;
	h=To:Subject:From:Date:From;
	b=eBBu7z4brXgffBNAffwIrela93WZNwVlAHtR2LW4lDqj/JOn8EDUS2a6lujglBuEF
	 PaTN6j/0DdNcWuhToZM0rIA3lkrOLqQ4WM05QLa21WfPTLk5wiW9jJL5zVaMDRU9f8
	 +VWA3lO9FFj0Onyf3S9AqXVcYYEPNz+PaP39zrVZ2Hu9DYZ6nJvQ1dcrQKwdpR4/A6
	 ZkTixyvHEac3vixqG+gD/VqNrC7IbTziyRdNosv6aPj/i5PfC/CxhRBy2SAWiwHRjR
	 XWqc4ybJz8aMH5j5zCMkAhUAWUxVBpGAvp5Q3E62JnllgAxiBgu27Zpdmf2g/8qE1R
	 5WEEFBUZmcnfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522A0C6FA86
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166236725333.28548.373497687936786673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7a463469c9764480cfc26f6163bc69d832c288636a72576dd1961d41fec6a07
Date: Mon, 05 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662367253
