Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01BC17C2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68B50C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661761852;
	bh=oyaK10pNtACTzRTfWSL7Kk3mkd3oS6HDdmDGjYBQLrU=;
	h=To:Subject:From:Date:From;
	b=fJJAtp1qLdEtktd0QYZO2W5jlDPf1zzi2ejGmqGZ2mh957Y7/p5o2vDe9uYejz4zo
	 OBc2m2lk+d81B3x2bBZXWydIt0bad2X70PDOsBu8Kn4j+brtsd/eXekVUxOSpVh3a8
	 A27yuMXuL51RXFZzTJCvxOv6TpUtZUqCE8OEWvu10P/v3rM2WwjhEtWdN40Gh71Uvg
	 IQVZOKpAnK1cZ4sziqat8njYVgdInVU+NMLhUof4gZHHnJe5EjDjIQl7EX3hQQoe0/
	 2SsKG/50olqMz64vZ18PM2oD+er/K1BdvB3kvggNjlO2macNiZV6U7pNoc0eA6Inm2
	 OEJXblKnHlwJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51F3CECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166176185232.4793.3608099536047285190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52744b851ba9922e46b269e209cd608ecd71c303653ab56930cf0276178819a9
Date: Mon, 29 Aug 2022 08:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661761852
