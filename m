Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1A453AB
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgZmcpOF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FC0BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700384296;
	bh=/jj1adHXomxifl7VLHmV6N3Dw8yRl4QrB2I3SLVg/DE=;
	h=To:Subject:From:Date:From;
	b=rgZmcpOFZCjCVGHNN7GbdU99LUwXPWtsBu5BO5S8+end7edrNHEY1wcLIyWRF5R7H
	 OEpME3qWwp4KYZNUaixauWqFz0z/izybxk4KAwdVRG/Ljxxe8zbw2jZIVZpXEKyFm2
	 6fO7DzUTTZO7E1fWFqzHcDIKDX9tmASlbCSWHzvfxMU7jAmMUMShLNcwUd1bbfbfpN
	 e0dfpdAdYuzwMQJAgXBA8S//1gtnGqLLyT3BkAJANYf31GRybImIOljQD+do6ifgiI
	 9br06ENhDpz6CLVSYGh0j0voM5SLsL7oVqLBCgTqDIFHTOf050Jkfre99L9tIKzCUU
	 wU38657CjgoYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62AA2C072A2
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170038429637.8540.11884090501892665376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ddccceb50afa4261a71af89794330d4003bcb7f4e1c8a1e54732d007d52bbe5
Date: Sun, 19 Nov 2023 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700384296
