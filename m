Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B32E6AA6
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KzX4i5tG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BF6EC433F1
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705177696;
	bh=/WMxnVDEwNPA4jefae6XD8H/pmESW/uOFNLo4q3m4cA=;
	h=To:Subject:From:Date:From;
	b=KzX4i5tG/vTo7gj0GNRsYVnCGVFwfZLpBX7oPEPipLlGUZAW+fhTIIlEpA0gqWJx2
	 TkErF9Sx0x7cnrT5twH5t+EXmXdnwfW+YTc8CVie0gBca7HnFsbLAMXqd6p/3HTSjq
	 CZcUWPEiA68rsddsl+qGaqJ7V654UEUFbtMHYB5JH8bgpkksu2eNDPukYw4aXFbi1X
	 c3khPA0FR1OaJCAarV+SIJ0khjIFcHgOpmqi4q8zXlQpunteInVmIOjPWFAzP+VNon
	 E37ZJwiivDLTED5UvB6CNststQ7MqQLTc5sipsodDDi5kEAu7JpOV4eza2Xkrx07u/
	 A/oawWUl7NHhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70976C4706C
	for <ddprobe@lists.linux.dev>; Sat, 13 Jan 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170517769641.8093.2861036947650133338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3882ad32cc9624fe27c6e95c8cc1c9d71af3bbaec8a7c711957a33ad8bfc32f9
Date: Sat, 13 Jan 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705177696
