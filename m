Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C66F715A6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7507DC433D7
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669351254;
	bh=uWd4TcuR05Z9lgUrsowxWjEVBM9HTaa6fe/hKcBB+Is=;
	h=To:Subject:From:Date:From;
	b=YZ0Up9qjExGyxD5Lf8p1RqaU0PzlcedBsRKAC/cxjWw6AU0wJ0zSOreg03PyFgxzw
	 4QRvF9jILk8ixf3aCc7P57aEAx8p+vIw50CektkhoDasd744FSqyGB0Ks5k+azpsgR
	 w3Vqj8RdyAxhF0ICjcOAva2hK4Vv99rOtDOloYjckpxf1rxRt8D9+9th7rL+C58F0T
	 x5l14piqRdEjmWQEwA7K5m1ykSxSGY9+q4WoqAad2UmfzMAXuf7T8SPRYrQecP5sci
	 o9T0EN42xogQHG2CyYHOYRX0Hq6XNlfBUEN4LGMBuGqVe99aCCm+rdlXNH/PRJYT1y
	 mNeIIXDX+J6gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58633C433FE
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166935125435.5743.10658604914853202063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545e3af0a743a0732ec1217523a4ca136c33d4f8a3bba596c80787acab34fa74
Date: Fri, 25 Nov 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669351254
