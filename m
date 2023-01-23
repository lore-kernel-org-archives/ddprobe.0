Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DCE2F49
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 13:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E21C433D2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 13:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674481985;
	bh=jyn5DXw64KS2rr+2E5qhRYFAvFbycCKV78VrvojgID0=;
	h=To:Subject:From:Date:From;
	b=Y4JOPzXA1r15Oyi8Mfw4kN0mZzJY9QBvT9CDGh4BNgEHeTqrN5hmtIk9nNXoSAv5f
	 BrQ80rDDrXgu9va0XlH3H4yHHAyLLWASTpiFU1POuWOJdqJphcmjViS3oFPODTOf7w
	 LC7KJGSvdgTQ0HHeDo8ik3cbTj6l53hOIzcD7Zbun/CCvGw9DWtHY6j807QR3Mbmsz
	 lsQc/BMpk3g+1S0RFFTFH8wRv8qPOnpvK/zmG9+04272bLKZPz0So7qIHfslYIZ4Fb
	 /NdwPfdwLuX2whZHykP0D87W1Xx9fx2P7BNMHRZhMZeOGGRzJwh73+QxNb+aS2kDL9
	 Sh/Xlw1aGua2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA179C05027
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 13:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167448198575.19404.4777761493935876698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd05f61fa1ad3bbaf4d2459d04476fd5517ef95020b8d0ae2f4f7ea46734175
Date: Mon, 23 Jan 2023 13:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674481985
