Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC467F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 12:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE552C433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 12:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682165406;
	bh=Gx1soMVQXmtx24oJqWS8csLq90gmhyDgHGI0c60nmJs=;
	h=To:Subject:From:Date:From;
	b=h4XngE5kfJEpc2aXdY0Cs0yP8ABge7Q72jZgoR+sTCFCjxUJWmZXGXcgXgFCyo8UC
	 yPkYMMwHwoboUaeoHX7Ehptn4nActDQUlGBFToPEhG4R+0caO2g5MTDMk2E0aumdzA
	 C1w8s4eL97FniJxzy0VsFTW7W9HGsADR5aN1c6Ct38IpHjXPxrl2Iq9w3BcGyO+TFo
	 YMkxRsCGcZ87d3luCJcj6hoZQjFYXJ4o/jDkSYJrH62YTtADRzf1t0YIsQGffo2ng3
	 hyKo2JZaxo3jk+XWwtpNyxdbQH9jxFe/GY3R6keMB+g9xs5qOFwWXc4U3ss445WPsr
	 iihItF00vYpyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD801C6FD18
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 12:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168216540581.14081.4178978973320989520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 901393713f8b356b3abdd2104a799f7cc84971ad240b44e1fe566874b0b65f38
Date: Sat, 22 Apr 2023 12:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682165405
