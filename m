Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71067C
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 07:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70244C433D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 07:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668757254;
	bh=MYJRCumZqFo/VfgKgZ4pRW9P7uYxVB60QLDofeEj7iY=;
	h=To:Subject:From:Date:From;
	b=k6TGZIHKEG8nbwEfxHFbEYzExTKh44f7HbGJRZSgLTn854GQD6pE4aOS6SUkQiXE4
	 entS3vQQAvec4ZmXP+RxhFyhatpjUdJIF28eojuEJYmYoNl9kO7oZdvstImkOdBhCj
	 Kwe7aiBibB91EZpixuoDjqZLHOWhgW8/A4UuyuxiSNf9n0AEOJ4ff54augiJZ+5hhu
	 31jIeUvVKQmAfjfCFIoEv0wZzrlGz+n1B9jHaqY1NdiGfacuCfiQZJ6B8yYsvfVy6d
	 Qnep9MOeETUlilE6pRHaIrKGIAVG/BRGDZsNFic66/SsrlA68YDHz2WczXiuSCTd7O
	 L2l44Up8OZ4QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A08EC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 07:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166875725436.6863.12014935872266486869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14a3537b4922aa9ba7e3357c7268bc8fff5c50df6e6cd784e354cbfc1f37a89
Date: Fri, 18 Nov 2022 07:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668757254
