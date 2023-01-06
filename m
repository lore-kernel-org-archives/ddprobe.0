Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D773C7B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F643C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672975887;
	bh=lOmSQDsSRPCmM4WgZSdee6Y23+X9hQ8DzQ7PqzBEu6Q=;
	h=To:Subject:From:Date:From;
	b=hkGYiCrCmTAUL5E0hInwPGCxyDRbyK1XhHtnJCL5HjXvFh735nNlbSOf6yTYKOENb
	 Y06bhfIbEgwBzeUcUTcIPZJ8gztu9KdSAd4CF2mXA7RHOwiEJ1dhpXvPmyANGDciRZ
	 8zlXjUIOZBcrHepZv5VI/9GOzN8LGcEXW2xeeswSWmggrqYwuy6XCSKHpFgT8frJw+
	 uYBHGp35EtPbZYo3Gzdnj6v/HAd6uvDyylO0VeEWDK+7MafyMoZp5r2Vj26sXHPLK8
	 fZQ8yvxaQHF4xCWN8c0khdSUa2vXOLiF/D5gi6w3g4ZZCyJwVyMfIWrRufmkrpxoe+
	 sgdfaclqNDBwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66867C4708E
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 03:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167297588741.10870.7284528077873248362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a701af5b4b09cbe714631d93c50afc4d5eaf7a5265a81b0a79466f3f79264907
Date: Fri, 06 Jan 2023 03:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672975887
