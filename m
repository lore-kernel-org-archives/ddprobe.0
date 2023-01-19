Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4012905
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF93C433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674112887;
	bh=f/yJc3bDNaTbFCB0+Fui+axe+JDvSLoGedye0M2xrdE=;
	h=To:Subject:From:Date:From;
	b=tf84E7Nmz9NBZXUruIkZBOOZkz1oANYPpNZV8/4wJE5j1VlAGYALMahdXTDmEJXLO
	 BYluSB4CRV10yOe609nma+7A40NSQGgCUFkWEs1rzikD8lXnS19uE28HuHJUaAIyy5
	 3Y1yFbx2z/zEmnvzGLFlmeT4NOMpxbjxrfvGdd/dzv5yWI65kh+CWQCF5GQAvyZinv
	 Ky8mu3SDCqKD0f8sCUfUaXZUw4eblJQ0YDy8wPLLBH35rhk+ANOW4BwGuRAkB+y3Sn
	 v87O1zUbj2QLpbc06xsY0pGi6H2o4wiLvgFbCdzonUy0+JrN9PTi1CdDrSuZeu6UkN
	 sbv2HZf7A/fCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 620D0C38142
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167411288739.25766.9521965724140390719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7dbeebb31c6670caa666f635a0732b1d6206fe9855e9073cdae1cb81529ebfc
Date: Thu, 19 Jan 2023 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674112887
