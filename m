Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB8A24680
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE44C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665784253;
	bh=EcM81Q2Q74BtNSry/oy8fZG4cgXVPJn1U9OrsCiWF04=;
	h=To:Subject:From:Date:From;
	b=C5tvJNm/CJ4b1kviXZS6y/+6fqqhLaVrj39lA4PcaeHQI9d/yj21ppyXRw89AK+4C
	 tu/qAguLU4w1lnUmuu0PypWRZVH6qtnR6mF7YqibNxWaeMG4JCSaonb24s1zc+9TIG
	 nZAipzzpYekdoKC2VwQc5ou41vVu6lwIbmKvhSz8yCQFmNaxUlgV11JLsYAr7hAfiM
	 cP/bUMujryYEskMPCocR7YUYd92TUv+m5j0qP6n7e0nIx3hRmwa+vg0FGoj92oee1j
	 LZLAXWZFtnTfLxzffXQfhBNX6TkTum7j/O9/foMOFjUztmlgf1XjsNSXwSgGo0ISRk
	 bGRpZrDPn4euw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D069C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166578425335.8107.4752258098886507561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f31f2e13313b3fdeed1fa1518952ab2f8bef1287e0d1c65780c0a5f58b46ef
Date: Fri, 14 Oct 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665784253
