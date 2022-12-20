Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B2310E6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 792D5C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671499887;
	bh=zyZdEEe5yvtMVIVJAFFIHYWL0RiOHzFOt5M8W0YTDdk=;
	h=To:Subject:From:Date:From;
	b=LoCHL2bFy7dQS33YUtdhv7TZHgt4JaeFqRv02uteaAVklzWzJ9VxVAPxmJcCpawzq
	 kp3CY51rnD5Zz7mcs0PMtX9qlxTONLTCWRrj0CvV6/B0pU9cfKZ9dNc6E6F3SLCf+x
	 4Sj3s4SZ4psyUFjHsXxvsZ5f+IDhCubgRFOaIXMzbOYsz6T1AvQoFiaatKKUarUIld
	 w5p6LdkQxw95E7HJ8W0oF/bVjGbI6dpEi3TU5Guz3zjxzfclBoocmHXM1LzdxZcawj
	 COrBTWBp2hz436cX0KWuo/DkI6PHqZKymH4w6/LhsQ9vDpYoGLa21yfBxsRUflaQFU
	 +axSRSzc78qlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A38C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149988740.9803.9336795101134998247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbad92e6e9f544dee5c8504a9bf07af4fa68b378ea6d1e9871cafd9ce27146b7
Date: Tue, 20 Dec 2022 01:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671499887
