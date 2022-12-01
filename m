Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C081B7F6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F1BC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669854054;
	bh=NjsN8/Mn9J3EtV5qpn1P8Gx8f14dHomOZwxSrNVLeaU=;
	h=To:Subject:From:Date:From;
	b=TvNnwDBQ9/1zymDuWnsVmDNxBmAK3lOiYj8rpWVOECXnrmzmu38p3oNsRR1Do8pXz
	 gil0c3LQZAJrmmejwS277Hn2onuApaIimikw3dCTInsnK7N4VlQ73KOX5h5XKWujBQ
	 h9bNE6AuOHBRkhuov0ZW3hfoT5DNZkdjYSJthzazCGLD0ePlJvYMmBfcKogU+JocFc
	 X/HZo3VTGqMKtjVPJjkFTiwgRoevZL0JjUy0jyQsT1yKNaHVH6mW6XuEPlo6IC/TrE
	 I7MUV+WAqf/T4+5FKBTwO2Mf//embI4NaJ4jEkTNqkVhpOgOJQfNNm64Q2a3Yy3/3N
	 OmNVKBqtTOk4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54015C4321E
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166985405433.17112.14019411947263460800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc700a705e4990e509ff5abbcb28de53c7e42bad56e7350a2c1c83a5a4ffd9d
Date: Thu, 01 Dec 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669854054
