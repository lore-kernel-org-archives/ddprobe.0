Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8DF2068B
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 17:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD116C433D2
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 17:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683825845;
	bh=gGSSQjug5SSoSRvI/7ImHFBBMSXRP6HDTaq/shVjI30=;
	h=To:Subject:From:Date:From;
	b=NWcbeKVGOuubTjUCy3Oe87df/+/4MHfLLtXcWIAWlz0+JOsgyNNSFi47OCtX3TCll
	 bhreuszuuTLbWf6IBXdR+wloBxcyGcO4derC1B7afyXuWmK2zikOUYNsePqZh5qM0h
	 CF632hP8ydj3kZGqR0WHXSKccB6extBrVL9/acTTIYIhO6C+nk4r61JVU54WqKb6G7
	 QJFzBcPcbYwlOUh0OJlFDRyADilopyEa/i3djDDD0IpnMwUS9haSK5x97fkbCvrE4u
	 bm11hZ9XCrdM0o4OLKlcBwysCiKdeP6GmtvnD/fvmUd18d65rdOSrUbrtaUEHQatVp
	 kusj2/Jl7CFHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01BBC77B7F
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 17:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168382584577.21142.7767983835489658216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 159dc8b334d0b9cc59749bbe34e50f7f268b96ec4d3271c0f620a9621856ef9d
Date: Thu, 11 May 2023 17:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683825845
