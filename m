Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE411804
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F8F8C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661946653;
	bh=T2cmO9X1m7YQV8rOtBxZRBk+yRz4ztK0ceaqKrLuqSk=;
	h=To:Subject:From:Date:From;
	b=oPSIsqs9US/iSUxRqKxQ3bS2U8vvslYeM0NiFD39eup13RajGZER1mykprQEW5hId
	 EQAK/UOv5gurbitnlF+rsA0QpvhQtpJLVI9/smMCRizqiy5iRRg/Zw0d7nvqrfnQ58
	 wstk+6U96TOjNXiLvnEwJ4gk6LoL8Rxj3B+dlxgIekD3bJB0x1cIaLOD96TJMYrkNf
	 3Fs8W2kCa2MFRPjsudDnMecmEyqbxxfvLanqhHhhyTov8EsfAlqmcEGOP3x3pXGgX3
	 Co01slkI5+ysbw+BoR8ZmtWkO4jHbAao6yA304bVmPj2kCA370QqeCYv6f1vcUdz5a
	 3B3NKaJg4wQBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 580E3ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166194665335.8584.2186713697116771768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73793591a80053e445043aa04913b696beb6a2698d7143ef701e7121c63fb7e1
Date: Wed, 31 Aug 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661946653
