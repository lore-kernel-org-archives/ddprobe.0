Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD6A63214
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F147C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670620887;
	bh=MBkAiTAV80rmO6CrRMyLcW9a7fPMVs+qccYiYIucjKU=;
	h=To:Subject:From:Date:From;
	b=Je5DI7plfL+vKXY4f0M79lYQ5OzzU9BD4bg3ab/SUUviJ2tO9542b9+c0EeQke8l0
	 AONds464oFC6nZ8hDwah1vYhS0Hfxqy/mOq1tDlyEeD/rzE14XMY/SX0gNQsHArqcs
	 tSH4cL2vyQ4Fhtggibzfu6HaW3iHRMs7SmPCPe5LC3Lmjn50woBPI/NqtZbfctCX89
	 7lIbylDJ7fS7pkq6CZH9IRkYYQQb7fTYv8RClZi1SjcOXM7P3u/mzC0nj5NWyEDyRt
	 mooVwdpDfT+bqOH+DVv/OE7hqJwq7AaAsOKxpMMtCIRoUCjQ7q771Bf3WxmADWjN06
	 sueuV8+hJtEPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610FBC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167062088739.32698.9182812565843942689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b1571e6440b91cb1bb614d4f8f828f6e053a04bac38e1cf644af6fd0755523
Date: Fri, 09 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670620887
