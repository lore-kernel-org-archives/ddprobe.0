Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66035AD41
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 12:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19E2C433C9
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 12:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693570448;
	bh=7FFzfEns6hw9BbMQCd1upyetPuUEoHH3GS1qziErmIY=;
	h=To:Subject:From:Date:From;
	b=kUjc2RgHUJDgxBknxOcnc/yZaAIoYB3tXUMlzDgKMAEohFrMvORmNBLN/EfWy+SWY
	 Clll5MQ5hDNmJz6kLURG1zwHQdQuMo5kXLEamAwUZ/vRh8Tyj+/4VyLJa3ROBBmQTE
	 +liojGL9GoJh5yW47rYd/8aSUAHAWbJQmTaE06JpeMMtxXve8RlwRSqqhxYbtXOw+p
	 BuaQvy7mwP9APtNWR0CkVhwHjwOy4+JHpa0TXVsG7ThutxmaCGXyHfgyEHhRLahKh4
	 riCs9fb70hqc19btAnVHWznUtXW7PXx6KXB15fnKeQt7zyAFv3KOmBmCEf3oviciQW
	 XavX9FqhI6YSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4978CA0FE6
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 12:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169357044866.15910.17069402068403602656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5989b7c48be41c670a92c1938f048f922406bb011188da5c5c406818fa4340e
Date: Fri, 01 Sep 2023 12:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693570448
