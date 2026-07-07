Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4653264EA
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783413514; cv=none; b=cM+QXvWp5lstQJ2e6TzJUNI36NZaBAmT34LapGknBrsWUlgIjUyFWlqJgWDfNDsTZM3znIywAMdYAnYQ9+9Q8CwObrSyRRCPMJOQRtkpYaVr1JVPSx+d1jrTKAnDUHNqSeiF8Rcp5i9HM5SyVQTYZB2m9PGY1pCdNUbpnqs2ypM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783413514; c=relaxed/simple;
	bh=I6rNQKC16xtMZhp9FgikSuP5f3FKZJ19JTwEVAUB1W4=;
	h=To:Subject:From:Message-Id:Date; b=OzaEnT0k7suTTvh+ICQzRi0wLHzx07fZoOQJ+SRffAlxKDoOMfSwlI5GEmRsb5+Zatt8hOAU74kROHdxU/XyOWvRU0mkfsdggEMCGZ+sPCtxtUTbwElou3ynr7XVEbYbXoqjY12nxm6ATC3SZK4k2GbTIsCo9gV84bWmGFIj6aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eai1XbZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eai1XbZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F95C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783413513;
	bh=I6rNQKC16xtMZhp9FgikSuP5f3FKZJ19JTwEVAUB1W4=;
	h=To:Subject:From:Date:From;
	b=Eai1XbZqKhXIpPvk8U1c+ChLLn6W7CWDa5sOHT4z8TFNjDB9ubssM0b8Svm33Qxn2
	 zXYSv6LOO7Z+MhhHfCKmSpCL7cttyCv2Fz8lburexIwqP+pkXNIj+0O9wwruFoK/W4
	 4wR7ug2jPqyS/34RCtYcIzklA3sPLUAhAQ/+2u+SCOWeRS2IpAPZB+QdW9tketFZfT
	 13RozYZ+mOfZ2Hx591+XJfcXoBhIC/lBZ/hi3WeBz4krprpbGU+X2x5h9xDZzvxzMw
	 QYpP6qqFMpyC77EDKR5tpiExwk7ttZoQXhG8vwoeQX/wYiyCPzE9FLCmOzzn/I5HNP
	 SJEpjJ1Fq3XNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B71B8C43602
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341351373.2440.13270133812024166689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94cb579272410b9929094213222d8ae4b119eb308a7527855463f2247b841ea9
Date: Tue, 07 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783413513
