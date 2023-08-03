Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3625B8F54
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 14:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF30EC433C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 14:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691073728;
	bh=voOFMBv9ZmsucEaRsV5Yqfsub5zA9/PlAeRn0Osx+AU=;
	h=To:Subject:From:Date:From;
	b=WWMP/022BBDSLoaiPwu6lncncD+rBQ8uqa0Ewv6CON/I2kvrHD/9ORTU/iltQMsEh
	 tWS7XGBWGFMZJ0wshePJGjhKszc+asqNQsIRyYNEKWj+ygtVz7nHWvAFMEe+zTpnGI
	 UMZIMP/PlsK2c8I4HCNfb+b5M85BU2Z+wQGRuvw8M2aWuPM9PdBmDD7LbsYs8lBJ94
	 RZZ16FPfQiSHq+ggjlNcytWgsi+UtcOP8rFltwgguw5YZhKx46w5hErtXPRB64bvyJ
	 +PhhemthF8zdqGTDvR3kONqxUnCI1F1Oq0PeIzyRcTvit/IDA93Di5xwPnoQjJgZFD
	 IgxBQogN9qUPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6743EB64DD
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 14:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169107372867.28939.14886197779900103016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f63a1d5b1e1966cad3c46522b13ffe394427479dd4d8048f32426682d28b053d
Date: Thu, 03 Aug 2023 14:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691073728
