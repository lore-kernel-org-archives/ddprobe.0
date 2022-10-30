Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7862F38
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A567C433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667135454;
	bh=mNSPaMExA4H6q/KyvkTVitfvF7kigceVtdgrMbiLyDQ=;
	h=To:Subject:From:Date:From;
	b=dDiAUY/rqI1hJxS1KFA/ouJu02MtPbdm6jx/lCMSruRu3TvUwAdKpnVukvmMmokrS
	 jw5IfkRb8OIjpE4PKK0ro9l8Fqy8LuFNy8ZyRw/JyUQx0YJPtmzg1G3S/C/9kD1U6V
	 lBZOuIiz/RCv23dIHKjOAUlfLp0jkR6ceQEZK8egU+Rw9vmZdx/N52QdHZKn+TI9TO
	 YO+JO9xwcgEH61WCVZp7IFjW12ap5EF8b8tI+WMTn/VbISLKWATIfdpDp5Z70Val9B
	 246ueuz/W2tFpdn+3KKGkWvSwa3nqesIFu7sAbdR5CFPXheIqiT8rGxxMv4fV7Mmn+
	 eWpBbwErbL0dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EEAECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166713545433.30475.2476649189123248992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83dece81e40ea0edbe9b4a7f90c5c7b92942ed99e897d8a3a1f823daa2f68a9f
Date: Sun, 30 Oct 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667135454
