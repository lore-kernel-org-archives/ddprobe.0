Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D6F7C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F8BFC433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673680287;
	bh=IpKJJdOn+EyLdiKDfky1VPUe7wAe9DtojR/bagxWH/A=;
	h=To:Subject:From:Date:From;
	b=uvX+4LayJVVKKUFr0X8piQZw3kOwXr/9vNg5N2tVIsYmmYS0LCbs02ECFpRvKmbGp
	 uOMGpgYu92HpT5co4AV5BCW3ThSxIHE+ZqXDAyYOMEDhQHIf+1it0AaFayIAD/GqBw
	 IBC03Q3uNIXK6ns1osxkSS02jhqSZQFcp28SRipRv4p+dLyCUfRAHT99OAwFMQjHn8
	 hj7HSNgVdT6pcy9Ivk0OFvFBWN11e/dcwJ5yFHlNB4xrqwQE2PWS+4Ipf+qR07a+uj
	 4PYHk4do52ozIEwe3gWxj0sHNncNj0TiV65Tg0GA/XtIbcnsSNxDXbFYg/MM0A5K4T
	 d57ue8gRWizzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63551C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167368028739.14378.4877412108507793172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd4bec3643c33740ff71406d2700720b19753cd2a1c9249c888c8a17bd4e744c
Date: Sat, 14 Jan 2023 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673680287
