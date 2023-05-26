Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466F523AD
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 05:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F211CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 05:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685078706;
	bh=Zxfzk6KU9M77dGh3nO52bHGZF2pjuoQTUJm/HTpf5V0=;
	h=To:Subject:From:Date:From;
	b=koS04o5zVNmrxqgDj5wOfDN7XwITBa/zDHmdw7jBvLg3EFuDXEpVg5RNaXr3SXSHt
	 nyGRaKJ6x1cM1vVNaDg64D+YYrywj3jZHfGn8My/A3ofU2i4J26i5Vj08J6pUxXJ+6
	 tdyaQxxcTOSqpEygqdJqme5eaw+ohuBUtcgzG8DDGaPMs9KLr20Z5SI39t+SfnWq8I
	 8zbKCOecJ/Mx2IYZa3JyvEhXMWIIID6kW/2zSTkRoilSEiDPVVYTFK/LfSiPNMz51O
	 oqTi0wdfXEOV3/Mx4UNQLHd76hLwootelKEExFnFOMmJbS2R6uaoxMWqdTRu16l8z2
	 8fyqGPLSDawhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3E4DC77B7A
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 05:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168507870583.20084.18179387279963052898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acead68211255027061cacd071ec2db7f8d73a62e8cdfb317919dc3caf9504b9
Date: Fri, 26 May 2023 05:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685078705
