Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8CCF1C13
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 19:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C565C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 19:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666897854;
	bh=rxXVayLG4ge8GAhEJ3FVqg74pauE4SdNnZSWvOnQYBY=;
	h=To:Subject:From:Date:From;
	b=R1RwTsEFeUaVoNZvCkcQjwJ2rJqjY/+jXwiMPsNl8fg9wdc0EAeFQbBWXL7A7j03n
	 ESmr9+pal73Q0XzztmOZJddSU7ncraNMRinndffGew6VPtJtttA7/sbC+xnaO5ZW38
	 DIXDi8A/hP9EyazvHmz4kQC2ZM89XEW5YnN8UDmfcUXWfs1Y7IaHwsGQabJhV6/tJZ
	 Iu5gNh/Lgn11MKZnpyznII1YIP1je51db6ZC3mLq64LgA+cEHy+9RpIGEYwFWvJ+Jl
	 Pn4wJJK64/YkD8AcAM4hGWnQqm0xLd0kTIzQZ7+iQRRPvrCSEVs9e7pB6H5Y3SqrhB
	 Dsvj+ctxnqxLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F227FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 19:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166689785431.32620.8516034867451033090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 924821e14adc51c2d0f7495aff9443aecd68bdba20b0c938fc6718b80a778950
Date: Thu, 27 Oct 2022 19:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666897854
