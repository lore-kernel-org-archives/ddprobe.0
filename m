Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0555A3D70
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkQvqJtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 834C7C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704853096;
	bh=5+ZR7HH2hci+7xEtW69t3dj7lwKev8/1AeCeecxX0cY=;
	h=To:Subject:From:Date:From;
	b=CkQvqJtuYbu3mTux83wC4g+UA4LkqF3GJMW+1i2GMx7ii+U+HFvOIvpTWs6dXpKk0
	 VBNe6EU7i5kVeVpUnrzaWsicCO/W/VAaRhQkXqQFlWqxf4u+3Ahwet617Jral9vyum
	 dO0WDp+k4zd/L5Cb07uEoCLJzNN48l13Wx9eGMDPd6+z1tcnfAqaYXQB/2xM8hcoqm
	 QYse4QTZlvxZgM6GQ7HKLWbo+q3osr3vbLs6AbfeZwJqi16RePNlKl9poR+MBjiArQ
	 rN42yKl2GUUvdrGzRC6xMzrBsT87fn3D3ORuXGAFlVP/lPL/6X2PQnJI1Ja1KTl2rm
	 0rBqpMECZTt3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 693CEC4706C
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170485309642.26392.12410391611153516650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 514c5a34f1dc8c3a20d2fc3d0dae2226ea8119b5c9324c53f8ceaa41d336a3f6
Date: Wed, 10 Jan 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704853096
