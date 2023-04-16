Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384BC4C60
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 19:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F64C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 19:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681673225;
	bh=gemwzHfha25K3bshjT6zY0RWtE3qPG+q+jVbek8fLeg=;
	h=To:Subject:From:Date:From;
	b=VIArWvcO9AO9Jo45+hc96NaBnP0TYmWNbkiDtTs00+EJF8dlUUaNA7+RNATNfhok1
	 XhFZg2rYp+OS1+8o23pwfQ0MQFtvGtvB4J0upXJlnTLw62himfUq/FwLaRe4M2Wj10
	 o7zz+1c7TluEIbdPoiwjItICO9Ms9X+LqqSAlTVUP9I2+2Acv5fPIYphCe1+J8GOot
	 YCbMFcNBk89kgMkY9/lCe6V3iwiW9QsywJzVqgFgsCMlt7beJ8Cye//ZWdBGDKIYWw
	 5FgSUJena+v/q5j1OYfZmGcmlb4x/qdmRDRWhukVDzriTexAKRUpAUUrdSH24zF5nt
	 mjN+/upVEvcsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEFA2C77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 19:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168167322574.22273.12021280330690843076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b52bd2b8273ee7a2ee1861ff7079bf44043663f3347b851f065459b328f3c17
Date: Sun, 16 Apr 2023 19:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681673225
