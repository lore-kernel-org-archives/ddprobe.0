Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF6CA2A
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85570C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672192287;
	bh=bJOQTggzcZ8WzxJBtqIfvkdVkQObyY/hUpQGWH88/60=;
	h=To:Subject:From:Date:From;
	b=Sl/q0gJLBjjMEp5amdAG6ftZEtwx3leSOSKFvdUP5oFKWN6YsMdAb/37N6b+sT0hz
	 aQX0iNQB+I0NU8Rr7qUBHKNldKA6UlA3UNZOxbqZXlfSVvAzKHkrjSEdOiuGXLnfJZ
	 I12BRwr02+bXsfWS9MByQWFSINil6Fa9nI2L+aQvaxixQjr3ZsdaY9FPk/dxnQCwel
	 C2Ae1kjUa+fSgfqivROw6OYgC11F5nHIT9vi5FE0Du/XMpGcw7zIWTM+Uj8Xbm+Hh1
	 ubvDUCTnk76YhPZ+VvvxXTLa8QlHBvy2Ut2QQWP6pagaEoj/Acik/x/tD8Sg9W7Len
	 VUdA9v53w47JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68039C10F1B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167219228741.10362.4632061246055078109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cfc0ed2d2cf8b1d0ffda7619dc1f4019b17e35ca88856424787268ac35b4846
Date: Wed, 28 Dec 2022 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672192287
