Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C95186F
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DDDDC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662133253;
	bh=m2W+9qqJe6diUSbPIPQIhDccb3E+Fw/dZAXEyZk10ws=;
	h=To:Subject:From:Date:From;
	b=JWwuTYchldiUsKVczlQqXWzpJzUbyPn6t0F63vRLrLl1P4PrX4/3rk5VkO4TcXbn7
	 78BwzBKlumMhaw0FBQi0ZEMGeXY/Ft2KLNRRaMCF0hUU1NFu3nNT2ZFEZetQ4/M9dJ
	 jOeaqBWU05O59iV+F7ZaLi+hHVojI5F4T9fpSmNpEZo3ksk+Di6B4mdeivFtOEsKYV
	 MdWP+6J3iLo2l1s29/gAQCV4NRG5zYriaYPcpJMdUCD7bSQ/xObwPOZheHamhpI3XZ
	 s7jyC75tsWX2kC/dNWfr4iZgvL4YSkzavRmOh/kfTB5c3UBL3ZJC5icIJRc47cPMnd
	 QHfQnmeTf97ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57882ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166213325334.7892.12117229739935586178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f23b34f20504fba2c098abcb9499cbfda6b089e458d1f91db22d744edb23f2
Date: Fri, 02 Sep 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662133253
