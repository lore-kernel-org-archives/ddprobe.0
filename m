Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6313C1097D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 17:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC70C433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 17:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687798988;
	bh=/Ocpdol9bWsoQ0Sls4KRjpWMNuc46xjRG64+OBAYjWk=;
	h=To:Subject:From:Date:From;
	b=QGSZhJAupZ2DMs1a/6H9v83jqOjPOiEXrDv4FDPxt0SSu8j5JJr9N4ul9eVRml5LZ
	 NuAh8gXb9d/ll9WtP0orUyOTWv6lz48tvV3RbNFC6vDd7qkpSjwo6KJLhGZ/YAlmN+
	 5jTn3TmQkS4egyyoVchud665LadLuzT6Wp6w3ji67trbftyd3mh7g6TwUTva59/1kD
	 /J+4BH1ivo1GqlxYroCPku9AES/elkhgGPTQJa1n3AtVK0Orr6czyd5gYJPuo5YqB8
	 40foipnSeGUvT6r0p6krqfIzg8eRknnSETAV2RkH/EBENFxAGlnMafqEQbIPZlHCPf
	 Q+DRAQ5pG3bZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC08EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 17:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168779898876.23257.399788574978938840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e71f40d67d923d7e379c1b13b5291a681d968e77260f9ece613b4e54b2c61a8
Date: Mon, 26 Jun 2023 17:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687798988
