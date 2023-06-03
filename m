Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95444C8DA
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 13:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFA6EC433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 13:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685800686;
	bh=eqzVuFg5ovcxJVYinDrn+IGWX75MUS8spfgRB3E76Y0=;
	h=To:Subject:From:Date:From;
	b=PVfV7SxNi57/6acCkCu4G7nEFftOZGPt8fVFIOwbRw81tskSwev85i1y7qaVXn7O4
	 BdzwVz0WBfsONI8WIlOL3Y3zeKjYTKbVr7jhuMCaQuFfJdXEv3+qRQZktapscOaPvi
	 gVH/8DAo24aU9X1wHB4UBnGlN5k8iB689KhEdsINLAcQe/O/zRjdBtLC8OciS4o9ZQ
	 ziPAcyxLML2NK2JbRzoM9dqNrQPw9K0oyvid+z9YULtCqaOlarVw7BLwEzGTTTdpRl
	 j8PQxJAINZmToZh+EjyaA0Ch0FekrmGAjqJGxVNue9sJBYWTHx5hx2YcQB02x/3Svb
	 Hd1GW2H1Vrddw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEDEFC7EE24
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 13:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168580068579.4524.16747339852391193016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 953e16b71d91814a14dcc5750522f6d455249f52f26412ca3b34889caabf6675
Date: Sat, 03 Jun 2023 13:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685800685
