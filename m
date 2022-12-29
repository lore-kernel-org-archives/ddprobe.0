Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9851FAF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F242C433EF
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672335087;
	bh=+f0D7HO3/KqBrMUTodTK6/KLPRxQJ2qRu7myerLTzqU=;
	h=To:Subject:From:Date:From;
	b=cHXY2xCtAbjIw+34y3xrszcLp3c1NaxfrEf9M9Mzo00f4cURI4Ix4MpFqMFtycASt
	 lOe4PpwNcc1o1AnQr54FvDTMUx+ImaB8reg38dl+0y1EYWpejx/TMkTZIbe6UwO4f8
	 iNy+Bnf/L6sPc+SbZGrh9ViVupGNjgXeh05QqdsygVDw9CH9nYzcj8atniejyaPRpX
	 ZObz9R+6euSv0OI/JnwB7D8YyhAIiNugiRw41uz7CC1+XHyeHow94ji6DRzYxjdvIn
	 cyBwXy4QjwOeukT14Wad2tOwcxyjpsPD9jNz/INzA8ut5oJHrle/OX3d5uYz13JQGU
	 Q36MiIyblg8GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68B65C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167233508741.23715.7173658689610495558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32180364630f449b7d5446fd8c0feb39e83ad4f858b35bad5bb41aca27babdfa
Date: Thu, 29 Dec 2022 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672335087
