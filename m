Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D8A28EE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7139CC433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667911254;
	bh=+BKZRDdNkY9J/hzjh+yi6NWJd1fTSiR9fP0sW0KeqpQ=;
	h=To:Subject:From:Date:From;
	b=NRGvpbMR6hzXSPC35jqlaEgZMxUq15xtShNSZ5lptu55ek5rKP/BO9Nf/R7CjPwsN
	 gduO/zj8RMELbuRGw8yurcCTjtd3vApxn5xnqPXKTOdO/dK+vt5sJd4Z93/pdA7RQC
	 GQYgnNOk7m6Vz7zeXFTa8TYOomhuw2OeTCYKxAWnfPZYqTNnc/uw/Jhgj2qYJEl2fU
	 XyV5yfpQ1N/W8+4lGk73S2onqHEm4SJXYOnEVPBGU/1U45GR+uXMTlruxzHwtK+HJw
	 rgavmb6eO6CtkitDhEe9f3KqQ5W158TLH00fe4oxIZvVF9GWk0uqO5nWVrRaHQWjRc
	 /Z+RLE/SPNnbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5913AC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166791125435.8350.13669376250834825470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b47d9b028c5a1cdd6ec25e7d18fe389b14fec597b97d44c48e310b2016611426
Date: Tue, 08 Nov 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667911254
