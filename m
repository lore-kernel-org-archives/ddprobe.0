Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D6B323C
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 15:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBAEC433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 15:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676733365;
	bh=3xGHoVYaJJWYnGFGws/qf1SxR84oA6sB1TEsqukC+sI=;
	h=To:Subject:From:Date:From;
	b=E0/YA0vZpdpAfqEheERFpoTV2GyundMbc8iV8VKHB2m+ozLl8SoVVxJ8CckQw1u/p
	 Gyq0ROADckz2ioNunoTsdxV+3grYKDMg8JYisnIpe3QR7+ssf45pHkDwqji1dynTze
	 OZ3ARgmEWXoqZ3Kb6rNLOPS10m3gyD+f2TlnnbuPZQakFrXj1aXSLk/KOtB/YYVMsN
	 I3cejuIQYHZiNZt7wXnHZTJiJzyDKWqzHxFi4td0F8JOiA76Mm4PuzqG0G54O+GB2I
	 +KMWrcDkzKRKpsbU4vjKg0zhBTnvITVjz02sck3opBhB2+bB4ebHyNs/NO3RJhrYux
	 JSNbwM2kcHeLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16B9C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 15:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167673336576.6789.13948832342530733090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e7c80fb41fbced6b9977aa7b072f73e3729b5b9cfec04100841a8b88992a95
Date: Sat, 18 Feb 2023 15:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676733365
